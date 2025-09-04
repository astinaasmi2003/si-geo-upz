<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jenis extends Model
{
    use HasFactory;

    protected $fillable = ['nama', 'keterangan'];

    public function upz()
    {
        return $this->hasMany(Upz::class, 'jenis_id');
    }
}

