<?php

namespace App\Filament\Widgets;

use App\Models\Laporan;
use Filament\Widgets\ChartWidget;
use Illuminate\Support\Carbon;

class LaporanPerBulanChart extends ChartWidget
{
    protected static ?string $heading = 'Grafik Laporan Per Bulan';
    protected static ?int $sort = 2;
    protected static ?string $maxHeight = '278px';

    protected function getData(): array
    {
        $data = Laporan::selectRaw('MONTH(tanggal) as bulan, COUNT(*) as total')
            ->groupBy('bulan')
            ->orderBy('bulan')
            ->pluck('total', 'bulan');

        $labels = [];
        $values = [];

        foreach (range(1, 12) as $bulan) {
            $labels[] = Carbon::create()->month($bulan)->translatedFormat('F');
            $values[] = $data[$bulan] ?? 0;
        }

        return [
            'datasets' => [
                [
                    'label' => 'Jumlah Laporan',
                    'data' => $values,
                    'borderColor' => '#4CAF50',
                    'backgroundColor' => 'rgba(76, 175, 80, 0.3)',
                    'fill' => true,
                    'tension' => 0.4, // Smooth curve
                    'pointBackgroundColor' => '#4CAF50',
                    'pointRadius' => 5,
                ],
            ],
            'labels' => $labels,
        ];
    }

    protected function getType(): string
    {
        return 'line'; // Bisa diganti 'bar'
    }
}
