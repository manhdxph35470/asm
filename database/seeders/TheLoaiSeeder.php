<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class TheLoaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('TheLoai')->insert([
            [
                'TenTL' => 'Thể loại 1',
                'ThuTu' => 1,
                'AnHien' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'TenTL' => 'Thể loại 2',
                'ThuTu' => 2,
                'AnHien' => 0,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ]);
    }
}
