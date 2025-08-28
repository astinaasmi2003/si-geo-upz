<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Upz extends Model
{
    use HasFactory;

    protected $fillable = [
        'nama_upz',
        'nama_ketua',
        'jenis_id',
        'tanggal_berlaku',
        'dibuat_oleh'
    ];

    public function jenis()
    {
        return $this->belongsTo(Jenis::class, 'jenis_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class, 'dibuat_oleh');
    }

    public function koordinat()
    {
        return $this->hasOne(Koordinat::class, 'upz_id');
    }

    public function wilayah()
    {
        return $this->hasMany(Wilayah::class, 'upz_id');
    }

    public function kontak()
    {
        return $this->hasMany(Kontak::class, 'upz_id');
    }

    public function foto()
    {
        return $this->hasMany(Foto::class, 'upz_id');
    }

    public function jadwalPelayanan()
    {
        return $this->hasMany(JadwalPelayanan::class, 'upz_id');
    }

    public function laporan()
    {
        return $this->hasMany(Laporan::class, 'upz_id');
    }
}

