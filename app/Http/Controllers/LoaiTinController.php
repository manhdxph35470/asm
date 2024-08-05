<?php

namespace App\Http\Controllers;

use App\Models\TheLoai;
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
//    
        // ADMIN
        
        public function addDm()
        {
            return view('admin.Theloai.themdm');
        }
        public function store()
        {
            $item = new TheLoai();
            $item->TenTL = $_POST['TenTL'];
            $item->ThuTu = $_POST['ThuTu'];
            $item->AnHien = $_POST['AnHien'];
            $item->save();

            return redirect()->route('admin.index');
        }
        public function xoa($idTL)
        {
            $theloai = TheLoai::find($idTL);
            $theloai->delete();
            return redirect()->route('admin.index');
        }
        public function update($idTL)
        {
            $theloai = TheLoai::find($idTL);
            return view('admin.Theloai.update', ['theloai' => $theloai]);
        }
        public function updatePro($idTL)
        {
            $item = TheLoai::find($idTL);
            $item->TenTL = $_POST['TenTL'];
            $item->ThuTu = $_POST['ThuTu'];
            $item->AnHien = $_POST['AnHien'];
            $item->save();

            return redirect()->route('admin.index');
        }
    }
    

