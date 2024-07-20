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
        Schema::create('tin', function (Blueprint $table) {
            $table->id('idTin');
            $table->string('TieuDe');
            $table->text('TomTat')->nullable();
            $table->longText('Content');
            $table->string('urlHinh')->nullable();
            $table->integer('idLT');
            $table->tinyInteger('NoiBat')->default(0);
            $table->tinyInteger('AnHien')->default(1);
            $table->date('Ngay');
            $table->string('slug');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        
        Schema::dropIfExists('tin');
    }
};

