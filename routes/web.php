<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\AsmControlller;
use App\Http\Controllers\ChiTietController;
use App\Http\Controllers\LoaiTinController;
use App\Http\Controllers\TinController;
use App\Http\Controllers\AuthenticationController;

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
//login
Route::get('login', [AuthenticationController::class, 'login'])->name('login');
Route::post('login', [AuthenticationController::class, 'postLogin'])->name('postLogin');
Route::get('logout', [AuthenticationController::class, 'logout'])->name('logout');
Route::get('register', [AuthenticationController::class, 'register'])->name('register');
Route::post('post-register', [AuthenticationController::class, 'postRegister'])->name('postRegister');



// admin
Route::get('admin', [AdminController::class, 'AdminIndex'])->name('admin.index')->middleware('checkAdmin');
//categories
Route::get('addcategory',[LoaiTinController::class, 'addDm'])->name('admin.add');
Route::post('store',[LoaiTinController::class, 'store'])->name('admin.store');
Route::get('delete/{idTL}',[LoaiTinController::class, 'xoa'])->name('admin.xoa');
Route::get('update/{idTL}',[LoaiTinController::class, 'update'])->name('admin.update');
Route::post('update/{idTL}',[LoaiTinController::class, 'updatePro'])->name('admin.updatePro');
//new
Route::get('listTin', [AdminController::class, 'listTin'])->name('tin.list');
Route::get('addTin', [TinController::class, 'create'])->name('tin.add');
Route::post('addTin', [TinController::class, 'createPro'])->name('tin.addPro');
Route::get('xoa/{idTin}',[TinController::class, 'xoaTin'])->name('tin.xoa');
Route::get('capnhat/{idTin}',[TinController::class, 'update'])->name('tin.update');
Route::post('capnhat/{idTin}',[TinController::class, 'updatePro'])->name('tin.updatePro');










