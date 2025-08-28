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
        Schema::create('upzs', function (Blueprint $table) {
            $table->id();
            $table->string('nama_upz', 45);
            $table->string('nama_ketua', 45);
            $table->foreignId('jenis_id')->constrained('jenis')->cascadeOnDelete();
            $table->date('tanggal_berlaku');
            $table->foreignId('dibuat_oleh')->constrained('users')->cascadeOnDelete();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('upzs');
    }
};
