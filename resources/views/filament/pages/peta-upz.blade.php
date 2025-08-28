<x-filament-panels::page>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet-routing-machine/dist/leaflet-routing-machine.css" />

    <div class="flex gap-4 mb-4">
        <input type="text" wire:model.debounce.500ms="search" placeholder="Cari UPZ..."
            class="border rounded px-3 py-2 w-1/3">
        <select wire:model="filterKecamatan" class="border rounded px-3 py-2">
            <option value="">Semua Kecamatan</option>
            @foreach($kecamatanList as $kec)
                <option value="{{ $kec }}">{{ $kec }}</option>
            @endforeach
        </select>
    </div>

    <div id="map" style="height: 400px; border-radius: 10px; position: relative;"></div>

    <!-- ✅ Card Info Rute -->
    <div id="route-info" class="hidden mt-4 bg-white shadow rounded-xl p-4">
        <h3 class="text-lg font-bold mb-2">Detail Rute</h3>
        <p><strong>UPZ:</strong> <span id="upz-name"></span></p>
        <p><strong>Jarak:</strong> <span id="distance"></span></p>
        <p><strong>Durasi:</strong> <span id="duration"></span></p>
    </div>

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

            // ✅ Tombol floating Hapus Rute
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
            document.getElementById('map').appendChild(btnWrapper);

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

                // ✅ Tampilkan info rute setelah ditemukan
                routingControl.on('routesfound', function (e) {
                    const route = e.routes[0];
                    const distanceKm = (route.summary.totalDistance / 1000).toFixed(2);
                    const durationMin = Math.round(route.summary.totalTime / 60);

                    document.getElementById('upz-name').innerText = namaUPZ;
                    document.getElementById('distance').innerText = distanceKm + ' km';
                    document.getElementById('duration').innerText = durationMin + ' menit';
                    document.getElementById('route-info').classList.remove('hidden');
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
                document.getElementById('route-info').classList.add('hidden');
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

                marker.setPopupContent(`
                    <b>${_upz.nama}</b><br>
                    ${_upz.alamat}<br>
                    Kec: ${_upz.kecamatan}<br><br>
                    <button onclick="${buttonAction}"
                        style="background:${buttonColor};color:#fff;padding:5px 10px;border:none;border-radius:5px;cursor:pointer;">
                        ${buttonLabel}
                    </button>
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
                            alamat: upz.alamat ?? '-',
                            kecamatan: upz.kecamatan ?? '-',
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

                        // ✅ Reset lastClickedMarker kalau popup ditutup
                        marker.on('popupclose', function () {
                            lastClickedMarker = null;
                        });

                        marker.addTo(map);
                        markers.push(marker);
                    }
                });
            }

            loadMarkers(@json($upzData));
            Livewire.on('refreshMap', (data) => loadMarkers(data));
        });
    </script>
</x-filament-panels::page>