<?php

use App\Http\Controllers\LaporanController;
use Illuminate\Support\Facades\Route;

Route::get('/laporan/cetak/{id}', [LaporanController::class, 'cetak'])->name('laporan.cetak');