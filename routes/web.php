<?php

use App\Http\Controllers\AsmControlller;
use App\Http\Controllers\ChiTietController;
use App\Http\Controllers\LoaiTinController;
use App\Http\Controllers\TinController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/', [TinController::class, 'index'])->name('home');
Route::get('/chitiet/{id}', [ChiTietController::class, 'chitiet'])->name('chitiet.show');
Route::get('/theloai/{id}', [LoaiTinController::class, 'tintrongloai'])->name('theloai');




