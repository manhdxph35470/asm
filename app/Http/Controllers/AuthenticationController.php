<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
// mã hóa

class AuthenticationController extends Controller
{
    //
    public function login()
    {
        return view('login');
    }
    public function postLogin(Request $request)
    {
        $data = [
            'email' => $request->email,
            'password' => $request->password

        ];
        if(Auth::attempt($data)){
            if(Auth::user()->role==1){
            return redirect()->route('admin.index')->with([
                'message' => 'Đăng nhập thành công'
            ]);
        }else{
            return redirect()->route('home')->with([
                'message' => 'Đăng nhập thành công'
            ]);
        }

        }else{
            return redirect()->back()->with([
                'message' => 'Email hoặc password kh đúng'
        ]);
        }
    }
    public function logout(){
        Auth::logout();
        return redirect()->route('login')->with(
            [
                'message' => 'Đăng xuất thành công'
            ]
            );
    }
    public function register(){
        return view('register');
    }
    public function postRegister(Request $request){
        $check = User::where('email', $request->email)->exists(); 
        //check email trùng
        if($check){
            return redirect()->back()->with([
                'message' => 'Tài khoản email đã tồn tại'
            ]);
        }else{
            $data = [
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password)
            ];
            $newUser = User::create($data);

            return redirect()->route('login')->with([
                'message' => 'Đăng ký thành công . Vui lòng đăng nhập'
            ]);
        }
    }
}
