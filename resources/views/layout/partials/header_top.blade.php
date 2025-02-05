@php
    $theloai = DB::table('theloai')
        ->select('idTL', 'TenTL')
        ->orderBy('ThuTu', 'asc')
        ->where('AnHien', '=', '1')
        ->limit(5)
        ->get();
@endphp

<div class="container">
    <nav class="navbar navbar-expand-lg navbar-white">
        <a class="navbar-brand order-1" href="{{ url('/') }}">
            <img class="img-fluid" width="100px" src="{{ config('app.url') }}/public/client/images/logo.png" alt="Reader | Hugo Personal Blog Template">
        </a>
        <div class="collapse navbar-collapse text-center order-lg-2 order-3" id="navigation">
            <ul class="navbar-nav mx-auto">
                @foreach($theloai as $tl)
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('theloai', ['id' => $tl->idTL]) }}">{{ $tl->TenTL }}</a>
                    </li>
                @endforeach
            </ul>
        </div>

        <div class="order-2 order-lg-3 d-flex align-items-center">
            <nav>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        @if(Auth::check())
                            <!-- Nếu người dùng đã đăng nhập -->
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Tài khoản
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="{{ route('logout') }}">Đăng xuất</a>
                                </div>
                            </li>
                        @else
                            
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">Đăng ký</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">Đăng nhập</a>
                            </li>
                        @endif
                    </ul>
                </div>
            </nav>

            <!-- Search -->
            <form class="search-bar">
                <input id="search-query" name="s" type="search" placeholder="Type &amp; Hit Enter...">
            </form>

            <button class="navbar-toggler border-0 order-1" type="button" data-toggle="collapse" data-target="#navigation">
                <i class="ti-menu"></i>
            </button>
        </div>
    </nav>
</div>
