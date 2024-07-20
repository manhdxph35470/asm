<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tin extends Model
{
    use HasFactory;

    protected $table = 'tin';
    protected $primaryKey = 'idTin';
    protected $dates = ['Ngay'];

    protected $fillable = [
        'TieuDe',
        'TomTat',
        'Content',
        'urlHinh',
        'idLT',
        'NoiBat',
        'AnHien',
        'Ngay',
        'slug',
    ];

}
