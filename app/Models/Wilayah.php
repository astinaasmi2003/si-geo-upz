<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wilayah extends Model
{
    use HasFactory;

    protected $fillable = ['upz_id', 'nama', 'jenis', 'kode', 'alamat'];

    public function upz()
    {
        return $this->belongsTo(Upz::class, 'upz_id');
    }
}

