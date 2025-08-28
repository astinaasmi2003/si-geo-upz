<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('laporans', function (Blueprint $table) {
            $table->id();
            $table->date('tanggal');
            $table->string('judul_laporan', 255);
            $table->text('isi_laporan');
            $table->foreignId('upz_id')->constrained('upzs')->cascadeOnDelete();
            $table->string('penghipunan_infaq', 16);
            $table->string('pendistribusian_infaq', 16);
            $table->string('penghimpunan_zakat', 16);
            $table->string('pendistribusian_zakat', 16);
            $table->string('penghimpunan_zakat_fitrah', 16);
            $table->string('pendistribusian_zakat_fitrah', 16);
            $table->text('kegiatan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('laporans');
    }
};
