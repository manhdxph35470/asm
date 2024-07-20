<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ChiTietController extends Controller
{
    public function chitiet($id)
    {
        
        
        $tin = DB::table('tin')
            ->where('idTin', $id)
            ->first();
        return view('tin.chitiettin', ['tin' => $tin]);
    }
}
