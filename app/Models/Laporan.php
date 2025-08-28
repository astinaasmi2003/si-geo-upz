<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Laporan extends Model
{
    use HasFactory;

    protected $fillable = [
        'tanggal',
        'judul_laporan',
        'isi_laporan',
        'upz_id',
        'penghipunan_infaq',
        'pendistribusian_infaq',
        'penghimpunan_zakat',
        'pendistribusian_zakat',
        'penghimpunan_zakat_fitrah',
        'pendistribusian_zakat_fitrah',
        'kegiatan'
    ];

    public function upz()
    {
        return $this->belongsTo(Upz::class, 'upz_id');
    }
}

