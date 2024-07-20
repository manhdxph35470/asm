<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('TheLoai', function (Blueprint $table) {
            $table->id('idTL');
            $table->string('TenTL');
            $table->integer('ThuTu');
            $table->boolean('AnHien');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('TheLoai');
    }
};
