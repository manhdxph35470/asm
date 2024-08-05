<?php

namespace App\Http\Controllers;

use App\Models\Tin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminController extends Controller
{
    public function AdminIndex(){
        $theloai = DB::table('theloai')->get();

        return view('admin.index', compact('theloai'));
    }
    public function listTin(){
        $tin = Tin::all();

        return view('admin.Tin.listTin', compact('tin'));
    }
}
