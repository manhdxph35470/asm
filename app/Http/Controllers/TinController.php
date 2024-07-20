<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;


class TinController extends Controller
{
    public function index()
    {
        $posts = DB::table('tin')
        ->select('tin.*')
        ->get();

        $editorsPick = DB::table('tin')
        ->where('NoiBat', 1)
        ->orderBy('Ngay', 'desc')
        ->take(1)->get();

        $trendingPosts = DB::table('tin')
        ->orderBy('Ngay', 'desc')
        ->take(3)->get();

        $popularPosts = DB::table('tin')
        ->orderBy('Ngay', 'desc')
        ->take(1)->get();

        return view('index', compact('posts','editorsPick', 'trendingPosts', 'popularPosts'));
    }
    
}
