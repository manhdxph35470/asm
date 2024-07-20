<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class LoaiTinSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('LoaiTin')->insert([
            [
                'Ten' => 'Loại tin 1',
                'MoTa' => 'Mô tả loại tin 1',
                'slug' => Str::slug('Loại tin 1'),
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'Ten' => 'Loại tin 2',
                'MoTa' => 'Mô tả loại tin 2',
                'slug' => Str::slug('Loại tin 2'),
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
