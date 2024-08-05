<?php

namespace App\Http\Controllers;

use App\Models\TheLoai;
use App\Models\Tin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class TinController extends Controller
{
    public function index()
    {
        $posts = DB::table('tin')
        ->select('tin.*')
        ->paginate(4);

        $editorsPick = DB::table('tin')
        ->where('NoiBat', 0)
        ->orderBy('Ngay', 'desc')
        ->take(1)->get();

        $trendingPosts = DB::table('tin')
        ->orderBy('Ngay', 'desc')
        ->take(3)->get();

        $popularPosts = DB::table('tin')
        ->where('NoiBat', 1)
        ->orderBy('Ngay', 'asc')
        ->take(1)->get();
        
        $theloai = TheLoai::all();

        return view('index', compact('posts','editorsPick', 'trendingPosts', 'popularPosts','theloai'));
    }

// admin

    public function create()
    {
        $listTheLoai = TheLoai::all();
        return view('admin/Tin/addTin',compact('listTheLoai'));
    }
    public function createPro(Request $request)
    {
        $item = new Tin();
        $item -> TieuDe = $request->TieuDe;
        $item -> TomTat = $request->TomTat;
        $item -> Content = $request->Content;
        $item -> idLT = $request->idLT;
        $item -> NoiBat = $request->NoiBat;
        $item -> AnHien = $request->AnHien;
        $item -> Ngay = $request->Ngay;
        $item -> slug = $request->slug;

        if ($request->hasFile('urlHinh')) {
            $file = $request->file('urlHinh');
            $fileName = time() . "_" . $file->getClientOriginalName();
            $file->storeAs('public/images/posts', $fileName);
            $item->urlHinh = $fileName;
        }

        $item->save();

        return redirect()->route('tin.list');

    }
    public function xoaTin($idTin)
    {
        $tin = Tin::find($idTin);
        $tin -> delete();
        return redirect()->route('tin.list');
    }
    public function update($idTin)
    {
        $listTheLoai = TheLoai::all();
        $tin = Tin::find($idTin);
        return view('admin.Tin.update', ['tin' => $tin, 'listTheLoai'=> $listTheLoai]);
    }
    public function updatePro(Request $request, $idTin)
    {
        $item = Tin::find($idTin);
        $item -> TieuDe = $request->TieuDe;
        $item -> TomTat = $request->TomTat;
        $item -> Content = $request->Content;
        $item -> idLT = $request->idLT;
        $item -> NoiBat = $request->NoiBat;
        $item -> AnHien = $request->AnHien;
        $item -> Ngay = $request->Ngay;
        $item -> slug = $request->slug;

        if ($request->hasFile('urlHinh')) {
            if ($item->urlHinh) {
                Storage::delete('public/images/posts/' . $item->urlHinh);
            }
    
            $file = $request->file('urlHinh');
            $fileName = time() . "_" . $file->getClientOriginalName();
            $file->storeAs('public/images/posts', $fileName);
    
            $item->urlHinh = $fileName;
        }
    
        $item->save();
    
        return redirect()->route('tin.list');
    }
}
