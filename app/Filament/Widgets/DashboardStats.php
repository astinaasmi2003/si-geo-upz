<?php

namespace App\Filament\Widgets;

use App\Models\Jenis;
use App\Models\Kontak;
use App\Models\Laporan;
use App\Models\Upz;
use App\Models\Wilayah;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class DashboardStats extends BaseWidget
{
    protected static ?int $sort = 1; // Urutan di dashboard

    protected function getStats(): array
    {
        $totalUpz = Upz::count();
        $totalLaporan = Laporan::count();
        $totalWilayah = Wilayah::count();

        return [
            Stat::make('Total UPZ', $totalUpz)
                ->description('Jumlah seluruh UPZ terdaftar')
                ->descriptionIcon('heroicon-m-building-office')
                ->chart([5, 10, 15, 20, 25, 30, 35])
                ->color('success'),

            Stat::make('Laporan Masuk', $totalLaporan)
                ->description('Total laporan yang dibuat')
                ->descriptionIcon('heroicon-m-document-text')
                ->chart([2, 4, 6, 8, 10, 12, 15])
                ->color('warning'),

            Stat::make('Wilayah', $totalWilayah)
                ->description('Jumlah wilayah yang dilayani UPZ')
                ->descriptionIcon('heroicon-m-map-pin')
                ->chart([3, 6, 9, 12, 15, 18, 21])
                ->color('info'),
        ];
    }
}
