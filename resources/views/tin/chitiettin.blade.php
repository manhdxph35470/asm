
@extends('layout..master')

    @section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-9 mb-5 mb-lg-0">
                <article>
                    <div class="post-slider mb-4">
                        <img src="{{ asset('images/post/post-2.jpg') }}" class="card-img" alt="post-thumb">
                    </div>
                    
                    <h1 class="h2">{{ $tin->TieuDe }}</h1>
                    <ul class="card-meta my-3 list-inline">
                        <li class="list-inline-item">
                            <a href="author-single.html" class="card-meta-author">
                                <img src="{{ asset('images/john-doe.jpg') }}">
                                <span>Charls Xaviar</span>
                            </a>
                        </li>
                        <li class="list-inline-item">
                            <i class="ti-timer"></i>2 Min To Read
                        </li>
                        <li class="list-inline-item">
                            <i class="ti-calendar"></i>{{ \Carbon\Carbon::parse($tin->Ngay)->format('Y/m/d') }}
                        </li>
                        <li class="list-inline-item">
                            <ul class="card-meta-tag list-inline">
                                <li class="list-inline-item"><a href="tags.html">Color</a></li>
                                <li class="list-inline-item"><a href="tags.html">Recipe</a></li>
                                <li class="list-inline-item"><a href="tags.html">Fish</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="content">
                        <p>{{!! $tin->Content !!}}</p> 
                    </div>
                </article>
            </div>

            <div class="col-lg-9 col-md-12">
                <div class="mb-5 border-top mt-4 pt-5">
                    <h3 class="mb-4">Comments</h3>

                    <!-- Example comment -->
                    <div class="media d-block d-sm-flex mb-4 pb-4">
                        <a class="d-inline-block mr-2 mb-3 mb-md-0" href="#">
                            <img src="{{ asset('images/post/user-01.jpg') }}" class="mr-3 rounded-circle" alt="">
                        </a>
                        <div class="media-body">
                            <a href="#!" class="h4 d-inline-block mb-3">Alexender Grahambel</a>

                            <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>
                            
                            <span class="text-black-800 mr-3 font-weight-600">April 18, 2020 at 6.25 pm</span>
                            <a class="text-primary font-weight-600" href="#!">Reply</a>
                        </div>
                    </div>
                    <div class="media d-block d-sm-flex">
                        <div class="d-inline-block mr-2 mb-3 mb-md-0" href="#">
                            <img class="mr-3" src="{{ asset('images/post/arrow.png') }}" alt="">
                            <a href="#!"><img src="{{ asset('images/post/user-02.jpg') }}" class="mr-3 rounded-circle" alt=""></a>
                        </div>
                        <div class="media-body">
                            <a href="#!" class="h4 d-inline-block mb-3">Nadia Sultana Tisa</a>

                            <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.</p>

                            <span class="text-black-800 mr-3 font-weight-600">April 18, 2020 at 6.25 pm</span>
                            <a class="text-primary font-weight-600" href="#!">Reply</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        
    @endsection




