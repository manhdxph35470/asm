@extends('layout.master')
@section('tieudetrang')
    {{ $TenTL }}
@endsection

@section('content')
    <div class="container mt-4">
        <h1 class="mb-4">{{ $TenTL }}</h1>
        <div class="row">
            @foreach ($listtin as $index => $t)
                <div class="col-md-6 mb-4">
                    <div class="card">
                        @if ($t->urlHinh)
                            <img src="{{ config('app.url') }}/public/client/images/{{$t->urlHinh }}" 
                            class="card-img-top" alt="{{ $t->TieuDe }}">
                        @endif
                        <div class="card-body">
                            <h5 class="card-title">
                                <a href="{{ url('tin', [$t->idLT]) }}" class="text-dark">
                                    {{ $t->TieuDe }}
                                </a>
                            </h5>
                            <p class="card-text">{{ $t->TomTat }}</p>
                        </div>
                    </div>
                </div>
                
                @if (($index + 1) % 2 == 0)
                    </div><div class="row">
                @endif
            @endforeach
        </div>
    </div>
@endsection
