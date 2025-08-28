<?php

namespace App\Filament\Pages;

use App\Models\Upz;
use Filament\Pages\Page;
use Livewire\WithPagination;

class PetaUpz extends Page
{
    use WithPagination;

    protected static ?string $navigationIcon = 'heroicon-o-map';
    protected static string $view = 'filament.pages.peta-upz';
    protected static ?string $navigationLabel = 'Peta UPZ';
    protected static ?string $title = 'Peta Lokasi UPZ';
    protected static ?string $slug = 'peta-upz';
    protected static ?string $navigationGroup = 'Laporan & Peta';

    public $search = '';
    public $filterKecamatan = '';

    public $upzData = [];
    public $kecamatanList = [];

    public function mount()
    {
        $this->loadData();
        // Ambil daftar kecamatan dari tabel wilayah
        $this->kecamatanList = \App\Models\Wilayah::select('nama')
            ->distinct()
            ->pluck('nama')
            ->toArray();
    }

    public function updated($property)
    {
        if (in_array($property, ['search', 'filterKecamatan'])) {
            $this->loadData();
            $this->dispatch('refreshMap', $this->upzData);
        }
    }

    public function loadData()
    {
        $query = Upz::with(['koordinat', 'wilayah']);

        if ($this->search) {
            $query->where('nama_upz', 'like', '%' . $this->search . '%');
        }

        if ($this->filterKecamatan) {
            $query->whereHas('wilayah', function ($q) {
                $q->where('nama', $this->filterKecamatan);
            });
        }

        $this->upzData = $query->get()->map(function ($upz) {
            return [
                'id' => $upz->id,
                'nama' => $upz->nama_upz,
                'alamat' => $upz->alamat ?? '-', // tambahkan alamat
                'kecamatan' => $upz->wilayah->first()->nama ?? '-',
                'latitude' => $upz->koordinat->latitude ?? null,
                'longitude' => $upz->koordinat->longitude ?? null, // fix nama kolom
            ];
        })->toArray();
    }
}
