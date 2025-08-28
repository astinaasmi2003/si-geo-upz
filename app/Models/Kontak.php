<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kontak extends Model
{
    use HasFactory;

    protected $fillable = ['upz_id', 'jenis_kontak', 'isi_kontak'];

    public function upz()
    {
        return $this->belongsTo(Upz::class, 'upz_id');
    }
}

