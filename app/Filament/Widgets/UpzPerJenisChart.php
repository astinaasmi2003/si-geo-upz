<?php

namespace App\Filament\Widgets;

use App\Models\Jenis;
use Filament\Widgets\ChartWidget;

class UpzPerJenisChart extends ChartWidget
{
    protected static ?string $heading = 'Distribusi UPZ per Jenis';
    protected static ?string $maxHeight = '278px';
    protected static ?int $sort = 3;

    protected function getData(): array
    {
        // Ambil semua jenis dengan relasi UPZ dan laporan
        $jenisData = Jenis::with(['upz.laporan'])->get();

        $labels = [];
        $values = [];

        foreach ($jenisData as $jenis) {
            $totalDana = 0;

            foreach ($jenis->upz as $upz) {
                foreach ($upz->laporan as $laporan) {
                    $totalDana +=
                        ($laporan->penghipunan_infaq ?? 0) +
                        ($laporan->pendistribusian_infaq ?? 0) +
                        ($laporan->penghimpunan_zakat ?? 0) +
                        ($laporan->pendistribusian_zakat ?? 0) +
                        ($laporan->penghimpunan_zakat_fitrah ?? 0) +
                        ($laporan->pendistribusian_zakat_fitrah ?? 0);
                }
            }

            $labels[] = $jenis->nama;
            $values[] = $totalDana;
        }

        return [
            'datasets' => [
                [
                    'label' => 'Total Dana (Rp)',
                    'data' => $values,
                    'backgroundColor' => [
                        '#4CAF50',
                        '#8BC34A',
                        '#FFC107',
                        '#FF9800',
                        '#03A9F4',
                        '#2196F3'
                    ],
                    'borderWidth' => 0,
                    'borderRadius' => 12,
                ],
            ],
            'labels' => $labels,
        ];
    }

    protected function getType(): string
    {
        return 'bar';
    }
}
