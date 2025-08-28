<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Koordinat extends Model
{
    use HasFactory;

    protected $fillable = ['upz_id', 'latitude', 'longitude'];

    public function upz()
    {
        return $this->belongsTo(Upz::class, 'upz_id');
    }
}

