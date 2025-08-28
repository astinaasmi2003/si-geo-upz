<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Foto extends Model
{
    use HasFactory;

    protected $fillable = ['upz_id', 'url_foto', 'keterangan'];

    public function upz()
    {
        return $this->belongsTo(Upz::class, 'upz_id');
    }
}

