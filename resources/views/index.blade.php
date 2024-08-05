@extends('layout.master')

@section('content')
    <section class="section pb-0">
        <div class="container">
            <div class="row">
                <!-- Editors Pick -->
                <div class="col-lg-4 mb-5">
                    <h2 class="h5 section-title">Editors Pick</h2>
                    @foreach ($editorsPick as $post)
                        <article class="card">
                            <div class="post-slider slider-sm"> `
                                <img src="{{ config('app.url') }}/public/storage/public/images/posts/{{ $post->urlHinh }}"
                                    class="card-img-top" alt="post-thumb">
                            </div>
                            <div class="card-body">
                                <a class="post-title"
                                    href="{{ route('chitiet.show', ['id' => $post->idTin]) }}">{{ $post->TieuDe }}</a>
                                <ul class="card-meta list-inline">
                                    <li class="list-inline-item">
                                        <a href="#" class="card-meta-author">
                                            <img src="{{ Storage::url('public/client/images/' . $post->urlHinh) }}"
                                                alt="Kate Stone">
                                            <span>Charls Xaviar</span>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <i class="ti-timer"></i>2 Min To Read
                                    </li>
                                    <li class="list-inline-item">
                                        <i class="ti-calendar"></i>{{ \Carbon\Carbon::parse($post->Ngay)->format('Y/m/d') }}
                                    </li>
                                    <li class="list-inline-item">
                                        <ul class="card-meta-tag list-inline">
                                            <li class="list-inline-item"><a href="#">Color</a></li>
                                            <li class="list-inline-item"><a href="#">Recipe</a></li>
                                            <li class="list-inline-item"><a href="#">Fish</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <p>{{ $post->TomTat }}</p>
                                <a href="{{ route('chitiet.show', ['id' => $post->idTin]) }}" class="btn btn-outline-primary">Read More</a>
                            </div>
                        </article>
                    @endforeach
                </div>

                <!-- Trending Post -->
                <div class="col-lg-4 mb-5">
                    <h2 class="h5 section-title">Trending Post</h2>
                    @foreach ($trendingPosts as $post)
                        <article class="card mb-4">
                            <div class="card-body d-flex">
                                <img class="card-img-sm"
                                    src="{{ config('app.url') }}/public/storage/public/images/posts/{{ $post->urlHinh }}">
                                <div class="ml-3">
                                    <h4><a href="{{ route('chitiet.show', ['id' => $post->idTin]) }}"
                                            class="post-title">{{ $post->TieuDe }}</a></h4>
                                    <ul class="card-meta list-inline mb-0">
                                        <li class="list-inline-item mb-0">
                                            {{ \Carbon\Carbon::parse($post->Ngay)->format('Y/m/d') }}
                                        </li>
                                        <li class="list-inline-item mb-0">
                                            <i class="ti-timer"></i>2 Min To Read
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </article>
                    @endforeach
                </div>

                <!-- Popular Post -->
                <div class="col-lg-4 mb-5">
                    <h2 class="h5 section-title">Popular Post</h2>
                    @foreach ($popularPosts as $post)
                        <article class="card">
                            <div class="post-slider slider-sm">
                                <img src="{{ config('app.url') }}/public/storage/public/images/posts/{{ $post->urlHinh }}"
                                    class="card-img-top" alt="post-thumb">
                            </div>
                            <div class="card-body">
                                <h3 class="h4 mb-3"><a class="post-title"
                                        href="{{ route('chitiet.show', ['id' => $post->idTin]) }}">{{ $post->TieuDe }}</a>
                                </h3>
                                <ul class="card-meta list-inline">
                                    <li class="list-inline-item">
                                        <a href="#" class="card-meta-author">
                                            <img src="{{ config('app.url') }}/public/storage/public/images/posts/{{ $post->urlHinh }}"
                                                alt="Kate Stone">
                                            <span>Kate Stone</span>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <i class="ti-timer"></i>2 Min To Read
                                    </li>
                                    <li class="list-inline-item">
                                        {{ \Carbon\Carbon::parse($post->Ngay)->format('Y/m/d') }}
                                    </li>
                                    <li class="list-inline-item">
                                        <ul class="card-meta-tag list-inline">
                                            <li class="list-inline-item"><a href="#">City</a></li>
                                            <li class="list-inline-item"><a href="#">Food</a></li>
                                            <li class="list-inline-item"><a href="#">Taste</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <p>{{ $post->TomTat }}</p>
                                <a href="{{ route('chitiet.show', ['id' => $post->idTin]) }}" class="btn btn-outline-primary">Read More</a>
                            </div>
                        </article>
                    @endforeach
                </div>

                <div class="col-12">
                    <div class="border-bottom border-default"></div>
                </div>
            </div>
        </div>
    </section>

    <section class="section-sm">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-8  mb-5 mb-lg-0">
                    <h2 class="h5 section-title">Recent Post</h2>

                    @foreach ($posts as $post)
                        <article class="card mb-4">
                            <div class="post-slider">
                                <img src="{{ config('app.url') }}/public/storage/public/images/posts/{{ $post->urlHinh }}"
                                    class="card-img-top" alt="post-thumb">
                            </div>
                            <div class="card-body">
                                <h3 class="mb-3"><a class="post-title"
                                        href="{{ route('chitiet.show', ['id' => $post->idTin]) }}">{{ $post->TieuDe }}</a>
                                </h3>
                                <ul class="card-meta list-inline">
                                    <li class="list-inline-item">
                                        <a href="author-single.html" class="card-meta-author">
                                            <img src="./client/images/john-doe.jpg" alt="John Doe">
                                            <span>John Doe</span>
                                        </a>
                                    </li>
                                    <li class="list-inline-item">
                                        <i class="ti-timer"></i>3 Min To Read
                                    </li>
                                    <li class="list-inline-item">
                                        {{ \Carbon\Carbon::parse($post->Ngay)->format('Y/m/d') }}
                                    </li>
                                    <li class="list-inline-item">
                                        <ul class="card-meta-tag list-inline">
                                            <li class="list-inline-item"><a href="tags.html">Demo</a></li>
                                            <li class="list-inline-item"><a href="tags.html">Elements</a></li>
                                        </ul>
                                    </li>
                                </ul>
                                <p>{{ $post->TomTat }}</p>
                                <a href="{{ route('chitiet.show', ['id' => $post->idTin]) }}" class="btn btn-outline-primary">Read More</a>
                            </div>
                        </article>
                    @endforeach

                    <!-- Pagination -->
                    <div class="pagination justify-content-center">
                        {{-- {{ $posts->links() }} <!-- Hiển thị phân trang --> --}}
                    </div>
                </div>
                 <!-- Pagination -->
                
            

                <!-- Sidebar -->
                <aside class="col-lg-4 sidebar-home">
                    <!-- Search -->
                    <div class="widget">
                        <h4 class="widget-title"><span>Search</span></h4>
                        <form action="#!" class="widget-search">
                            <input class="mb-3" id="search-query" name="s" type="search"
                                placeholder="Type &amp; Hit Enter...">
                            <i class="ti-search"></i>
                            <button type="submit" class="btn btn-primary btn-block">Search</button>
                        </form>
                    </div>



                    <!-- Promotion -->
                    <div class="promotion">
                        <img src="./client/images/promotion.jpg" class="img-fluid w-100">
                        <div class="promotion-content">
                            <h5 class="text-white mb-3">Create Stunning Website!!</h5>
                            <p class="text-white mb-4">Lorem ipsum dolor sit amet, consectetur sociis. Etiam nunc amet id
                                dignissim. Feugiat id tempor vel sit ornare turpis posuere.</p>
                            <a href="https://themefisher.com/" class="btn btn-primary">Get Started</a>
                        </div>
                    </div>

                    <!-- Categories -->
                    <div class="widget widget-categories">
                        <h4 class="widget-title"><span>Categories</span></h4>
                        <ul class="list-unstyled widget-list">
                            @foreach ($theloai as $item)
                                <li><a href="{{ route('home', ['idTL' => $item->idTL]) }}">{{ $item->TenTL }}</a></li>
                            @endforeach
                        </ul>
                    </div>

                    <!-- Recent Post -->
                    <div class="widget">
                        <h4 class="widget-title">Recent Post</h4>
                        @foreach ($posts as $post)
                            <article class="widget-card">
                                <div class="d-flex">
                                    <img class="card-img-sm"
                                        src="{{ config('app.url') }}/public/storage/public/images/posts/{{ $post->urlHinh }}">
                                    <div class="ml-3">
                                        <h5><a class="post-title"
                                                href="post-details/{{ $post->slug }}">{{ $post->TieuDe }}</a></h5>
                                        <ul class="card-meta list-inline mb-0">
                                            <li class="list-inline-item mb-0">
                                                {{ \Carbon\Carbon::parse($post->Ngay)->format('Y/m/d') }}

                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </article>
                        @endforeach
                    </div>
    </section>


    <!-- Social -->
    <div class="widget">
        <h4 class="widget-title"><span>Social Links</span></h4>
        <ul class="list-inline widget-social">
            <li class="list-inline-item"><a href="#"><i class="ti-facebook"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="ti-twitter-alt"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="ti-linkedin"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="ti-github"></i></a></li>
            <li class="list-inline-item"><a href="#"><i class="ti-youtube"></i></a></li>
        </ul>
    </div>
    </aside>
    </div>
    </div>
    </section>
@endsection
