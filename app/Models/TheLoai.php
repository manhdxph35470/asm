<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TheLoai extends Model
{
    use HasFactory;
    protected $table = 'theloai';
    protected $primaryKey = 'idTL';
    protected $fillable = 
    [
        'TenTL',
        'ThuTu',
        'AnHien'
    ];
}
