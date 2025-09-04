<x-filament-panels::page>
    <div class="relative w-full">
        <!-- ✅ Container Map -->
        <div style="position: relative; height: 500px; border-radius: 10px; overflow: hidden;">

            <!-- ✅ Filter Panel -->
            <div id="filter-panel" style="
                    position: absolute;
                    top: 15px;
                    left: 50%;
                    transform: translateX(-50%);
                    z-index: 9999;
                    background: white;
                    padding: 12px;
                    border-radius: 12px;
                    box-shadow: 0 4px 10px rgba(0,0,0,0.15);
                    display: flex;
                    gap: 10px;
                ">
                <input id="search-upz" type="text" placeholder="Cari UPZ..."
                    style="border: 1px solid #ddd; border-radius: 8px; padding: 6px 10px; width: 200px;">
                <select id="filter-kecamatan" style="border: 1px solid #ddd; border-radius: 8px; padding: 6px 10px;">
                    <option value="">Semua Kecamatan</option>
                    @foreach($kecamatanList as $kec)
                        <option value="{{ $kec }}">{{ $kec }}</option>
                    @endforeach
                </select>
            </div>

            <!-- ✅ Map -->
            <div id="map" style="height: 100%; width: 100%;"></div>

            <!-- ✅ Card Info Rute -->
            <div id="route-info" style="
                    position: absolute;
                    bottom: 20px;
                    right: 20px;
                    background: white;
                    box-shadow: 0 4px 10px rgba(0,0,0,0.15);
                    border-radius: 12px;
                    padding: 12px;
                    width: 220px;
                    display: none;
                    z-index: 9999;
                ">
                <h3 style="font-size: 16px; font-weight: bold; margin-bottom: 8px;">Detail Rute</h3>
                <p><strong>UPZ:</strong> <span id="upz-name"></span></p>
                <p><strong>Jarak:</strong> <span id="distance"></span></p>
                <p><strong>Durasi:</strong> <span id="duration"></span></p>
            </div>
        </div>
    </div>
</x-filament-panels::page>

@push('styles')
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet-routing-machine/dist/leaflet-routing-machine.css" />
@endpush

@push('scripts')
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <script src="https://unpkg.com/leaflet-routing-machine/dist/leaflet-routing-machine.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            const map = L.map('map').setView([0.1322, 117.4854], 13);

            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                attribution: '&copy; OpenStreetMap contributors'
            }).addTo(map);

            let markers = [];
            let userLocation = null;
            let routingControl = null;
            let activeDestination = null;
            let lastClickedMarker = null;

            const upzData = @json($upzData);

            const norm = (v) => Number.parseFloat(v).toFixed(6);
            const sameCoord = (a, b) => a && b && norm(a.lat) === norm(b.lat) && norm(a.lng) === norm(b.lng);

            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (pos) {
                    userLocation = [pos.coords.latitude, pos.coords.longitude];
                    L.marker(userLocation, {
                        title: "Lokasi Saya",
                        icon: L.icon({
                            iconUrl: 'https://cdn-icons-png.flaticon.com/512/64/64113.png',
                            iconSize: [32, 32]
                        })
                    }).addTo(map).bindPopup("Lokasi Anda");
                    map.setView(userLocation, 14);
                });
            }

            // ✅ Tombol Hapus Rute
            const btnWrapper = document.createElement('div');
            btnWrapper.style.position = 'absolute';
            btnWrapper.style.bottom = '20px';
            btnWrapper.style.left = '50%';
            btnWrapper.style.transform = 'translateX(-50%)';
            btnWrapper.style.zIndex = '9999';

            const btnClear = document.createElement('button');
            btnClear.textContent = 'Hapus Rute';
            btnClear.style.background = '#ef4444';
            btnClear.style.color = '#fff';
            btnClear.style.padding = '10px 16px';
            btnClear.style.borderRadius = '6px';
            btnClear.style.cursor = 'pointer';
            btnClear.style.fontWeight = 'bold';
            btnClear.style.display = 'none';

            btnClear.onclick = () => clearRoute();

            btnWrapper.appendChild(btnClear);
            document.querySelector('#map').parentElement.appendChild(btnWrapper);

            // ✅ Fungsi untuk menampilkan rute
            function showRoute(lat, lng, namaUPZ) {
                if (!userLocation) {
                    alert("Lokasi Anda belum terdeteksi.");
                    return;
                }

                if (activeDestination && sameCoord(activeDestination, { lat, lng })) {
                    return clearRoute();
                }

                if (routingControl) {
                    map.removeControl(routingControl);
                    routingControl = null;
                }

                routingControl = L.Routing.control({
                    waypoints: [
                        L.latLng(userLocation[0], userLocation[1]),
                        L.latLng(lat, lng)
                    ],
                    createMarker: () => null,
                    addWaypoints: false,
                    draggableWaypoints: false,
                    routeWhileDragging: false,
                    fitSelectedRoutes: true,
                    show: false
                }).addTo(map);

                activeDestination = { lat, lng };
                btnClear.style.display = 'block';
                map.closePopup();

                routingControl.on('routesfound', function (e) {
                    const route = e.routes[0];
                    const distanceKm = (route.summary.totalDistance / 1000).toFixed(2);
                    const durationMin = Math.round(route.summary.totalTime / 60);

                    document.getElementById('upz-name').innerText = namaUPZ;
                    document.getElementById('distance').innerText = distanceKm + ' km';
                    document.getElementById('duration').innerText = durationMin + ' menit';
                    document.getElementById('route-info').style.display = 'block';
                });

                if (lastClickedMarker && lastClickedMarker.isPopupOpen()) {
                    refreshMarkerPopup(lastClickedMarker);
                }
            }

            function clearRoute() {
                if (routingControl) {
                    map.removeControl(routingControl);
                    routingControl = null;
                }
                activeDestination = null;
                btnClear.style.display = 'none';
                document.getElementById('route-info').style.display = 'none';
                if (lastClickedMarker && lastClickedMarker.isPopupOpen()) {
                    refreshMarkerPopup(lastClickedMarker);
                }
            }

            window.showRoute = showRoute;
            window.clearRoute = clearRoute;

            function refreshMarkerPopup(marker) {
                const { _upz } = marker;
                const isActiveDest = activeDestination && sameCoord(activeDestination, { lat: _upz.latitude, lng: _upz.longitude });
                const buttonLabel = isActiveDest ? 'Hapus Rute' : 'Tampilkan Rute';
                const buttonColor = isActiveDest ? '#ef4444' : '#2563eb';
                const buttonAction = isActiveDest
                    ? `window.clearRoute()`
                    : `window.showRoute(${_upz.latitude}, ${_upz.longitude}, '${_upz.nama}')`;

                const fotoHtml = _upz.foto
                    ? `<img src="${_upz.foto}" style="width:100%;border-radius:8px;margin-bottom:8px;">`
                    : '';

                const jadwalHtml = _upz.jadwal && _upz.jadwal.length > 0
                    ? _upz.jadwal.map(j => `<span style="background:#e0f2fe;color:#0369a1;padding:2px 6px;border-radius:4px;margin:2px;display:inline-block;">${j}</span>`).join(' ')
                    : '<i>Tidak ada jadwal</i>';

                const kontakHtml = _upz.kontak && _upz.kontak.length > 0
                    ? _upz.kontak.map(c => `<li>${c.jenis}: ${c.isi}</li>`).join('')
                    : '<i>Tidak ada kontak</i>';

                marker.setPopupContent(`
                        <div style="font-size:14px;max-width:250px;">
                            ${fotoHtml}
                            <h3 style="margin:0;font-size:16px;color:#111; font-weight: bold">${_upz.nama}</h3>
                            <p style="margin:4px 0;"><b>Ketua:</b> ${_upz.ketua}</p>
                            <p style="margin:4px 0;"><b>Alamat:</b> ${_upz.alamat}</p>
                            <p style="margin:4px 0;"><b>Kecamatan:</b> ${_upz.kecamatan}</p>

                            <div style="margin:8px 0;">
                                <b>📅 Jadwal:</b><br>
                                ${jadwalHtml}
                            </div>

                            <div style="margin:8px 0;">
                                <b>📞 Kontak:</b>
                                <ul style="padding-left:16px;margin:4px 0;">${kontakHtml}</ul>
                            </div>

                            <button onclick="${buttonAction}"
                                style="background:${buttonColor};color:#fff;padding:6px 10px;border:none;border-radius:6px;cursor:pointer;width:100%;font-weight:bold;">
                                ${buttonLabel}
                            </button>
                        </div>
                    `);
            }

            function loadMarkers(data) {
                markers.forEach(m => map.removeLayer(m));
                markers = [];
                lastClickedMarker = null;

                data.forEach(function (upz) {
                    if (upz.latitude && upz.longitude) {
                        const marker = L.marker([upz.latitude, upz.longitude]);
                        marker._upz = {
                            id: upz.id,
                            nama: upz.nama,
                            ketua: upz.ketua,
                            alamat: upz.alamat,
                            kecamatan: upz.kecamatan,
                            foto: upz.foto,
                            jadwal: upz.jadwal,
                            kontak: upz.kontak,
                            latitude: parseFloat(upz.latitude),
                            longitude: parseFloat(upz.longitude),
                        };

                        marker.bindPopup('');
                        refreshMarkerPopup(marker);

                        marker.on('click', function () {
                            lastClickedMarker = marker;
                            refreshMarkerPopup(marker);
                            marker.openPopup();
                        });

                        marker.on('popupclose', function () {
                            lastClickedMarker = null;
                        });

                        marker.addTo(map);
                        markers.push(marker);
                    }
                });
            }

            loadMarkers(upzData);

            const searchInput = document.getElementById('search-upz');
            const kecSelect = document.getElementById('filter-kecamatan');

            function applyFilter() {
                const searchTerm = searchInput.value.toLowerCase();
                const selectedKec = kecSelect.value;
                const filtered = upzData.filter(upz => {
                    const matchName = upz.nama.toLowerCase().includes(searchTerm);
                    const matchKec = selectedKec === '' || upz.kecamatan === selectedKec;
                    return matchName && matchKec;
                });
                loadMarkers(filtered);
            }

            searchInput.addEventListener('input', applyFilter);
            kecSelect.addEventListener('change', applyFilter);
        });
    </script>
@endpush