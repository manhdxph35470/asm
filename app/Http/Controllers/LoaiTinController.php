<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class LoaiTinController extends Controller
{
    public function tintrongloai($idLt) {
        $listtin = DB::table('tin')
            ->join('theloai', 'tin.idLT', '=', 'theloai.idTL')
            ->where('tin.idLT', $idLt)
            ->select('tin.*', 'theloai.TenTL')
            ->get();

        $loaitin = DB::table('theloai')
        ->where('idTL', $idLt)
        ->first();
    
        $data = ['idLT' => $idLt, 'listtin' => $listtin, 'TenTL' => $loaitin->TenTL];
        return view('theloai.theloai', $data);
    }
   
    }
    

