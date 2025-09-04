<?php

namespace App\Http\Controllers;

use App\Models\Laporan;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Http\Request;

class LaporanController extends Controller
{
    public function cetak($id)
    {
        // Ambil data laporan
        $laporan = Laporan::with('upz')->findOrFail($id);

        // Ambil logo dan ubah jadi base64
        $logoPath = public_path('img/logo.png');
        $logoBase64 = null;

        if (file_exists($logoPath)) {
            $logoBase64 = 'data:image/png;base64,' . base64_encode(file_get_contents($logoPath));
        }

        // Load view ke PDF
        $pdf = Pdf::loadView('laporan.pdf', compact('laporan', 'logoBase64'))
            ->setPaper('a4', 'portrait');

        return $pdf->stream('laporan-' . $laporan->id . '.pdf');
    }

}
