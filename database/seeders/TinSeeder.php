<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class TinSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('tin')->insert([
            [
                'TieuDe' => 'Tin tức 1',
                'TomTat' => 'Tóm tắt tin tức 1',
                'Content' => 'Nội dung tin tức 1',
                'urlHinh' => 'url1.jpg',
                'idLT' => 1,
                'NoiBat' => 1,
                'AnHien' => 1,
                'Ngay' => now(),
                'slug' => Str::slug('Tin tức 1'),
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'TieuDe' => 'Tin tức 2',
                'TomTat' => 'Tóm tắt tin tức 2',
                'Content' => 'Nội dung tin tức 2',
                'urlHinh' => 'url2.jpg',
                'idLT' => 2,
                'NoiBat' => 0,
                'AnHien' => 1,
                'Ngay' => now(),
                'slug' => Str::slug('Tin tức 2'),
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
