<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <title>Laporan UPZ</title>
    <style>
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            font-size: 14px;
            margin: 0;
            padding: 20px;
            background-color: #f4f9f4;
            color: #333;
        }

        .container {
            max-width: 800px;
            margin: auto;
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
        }

        /* HEADER */
        .header {
            text-align: center;
            margin-bottom: 10px;
        }

        .header img {
            width: 100px;
            height: auto;
            display: inline-block;
            vertical-align: middle;
            margin-right: 15px;
        }

        .header h2 {
            display: inline-block;
            vertical-align: middle;
            margin: 0;
            color: #2e7d32;
            font-size: 24px;
        }

        .divider {
            width: 80px;
            height: 3px;
            background: #43a047;
            margin: 10px auto 20px;
            border-radius: 2px;
        }

        .info {
            margin-bottom: 20px;
        }

        .info p {
            margin: 6px 0;
            font-size: 14px;
        }

        .info strong {
            color: #1b5e20;
        }

        h3 {
            margin-top: 25px;
            color: #2e7d32;
            font-size: 18px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            font-size: 14px;
        }

        table th {
            background: #388e3c;
            color: #fff;
            text-align: left;
            padding: 10px;
        }

        table td {
            border: 1px solid #c8e6c9;
            padding: 10px;
        }

        table tr:nth-child(even) {
            background: #f1f8e9;
        }

        .total-row td {
            font-weight: bold;
            background: #dcedc8;
        }

        /* AREA TANDA TANGAN */
        .signature {
            margin-top: 50px;
            display: flex;
            justify-content: flex-end;
            text-align: center;
        }

        .signature div {
            width: 200px;
        }

        .signature .space {
            height: 80px;
            /* ruang kosong utk tanda tangan */
        }
    </style>
</head>

<body>
    <div class="container">
        <!-- HEADER -->
        <div class="header">
            @if($logoBase64)
                <img src="{{ $logoBase64 }}" alt="Logo">
            @endif
            <h2>Laporan UPZ</h2>
        </div>

        <div class="divider"></div>

        <!-- INFO -->
        <div class="info">
            <p><strong>Tanggal:</strong> {{ $laporan->tanggal }}</p>
            <p><strong>UPZ:</strong> {{ $laporan->upz->nama_upz ?? '-' }}</p>
            <p><strong>Judul:</strong> {{ $laporan->judul_laporan }}</p>
            <p><strong>Isi Laporan:</strong> {{ $laporan->isi_laporan }}</p>
        </div>

        <!-- TABLE -->
        <h3>Data Keuangan</h3>
        <table>
            <tr>
                <th>Kategori</th>
                <th>Jumlah (Rp)</th>
            </tr>
            <tr>
                <td>Penghimpunan Infaq</td>
                <td>{{ number_format($laporan->penghipunan_infaq, 0, ',', '.') }}</td>
            </tr>
            <tr>
                <td>Pendistribusian Infaq</td>
                <td>{{ number_format($laporan->pendistribusian_infaq, 0, ',', '.') }}</td>
            </tr>
            <tr>
                <td>Penghimpunan Zakat</td>
                <td>{{ number_format($laporan->penghimpunan_zakat, 0, ',', '.') }}</td>
            </tr>
            <tr>
                <td>Pendistribusian Zakat</td>
                <td>{{ number_format($laporan->pendistribusian_zakat, 0, ',', '.') }}</td>
            </tr>
            <tr>
                <td>Penghimpunan Zakat Fitrah</td>
                <td>{{ number_format($laporan->penghimpunan_zakat_fitrah, 0, ',', '.') }}</td>
            </tr>
            <tr>
                <td>Pendistribusian Zakat Fitrah</td>
                <td>{{ number_format($laporan->pendistribusian_zakat_fitrah, 0, ',', '.') }}</td>
            </tr>
        </table>

        <!-- SIGNATURE -->
        <div class="signature">
            <div>
                <p>{{ now()->format('d F Y') }}</p>
                <p>Mengetahui,</p>
                <p><strong>UPZ Masjid</strong></p>
                <div class="space"></div>
                <p><u>(........................................)</u></p>
            </div>
        </div>
    </div>
</body>

</html>