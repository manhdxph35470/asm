@extends('admin.masters.master') 
@section('title')
    Sửa tin tức
@endsection

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Sửa tin tức</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Sửa tin tức</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form action="{{route('tin.updatePro', ['idTin' => $tin->idTin ])}}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="mb-3">
                                    Tiêu đề:
                                    <input type="text" class="form-control" name="TieuDe" placeholder="Tiêu đề tin tức" value="{{ $tin->TieuDe }}" required>
                                </div>
                                <div class="mb-3">
                                    Tóm tắt:
                                    <input type="text" class="form-control" name="TomTat" placeholder="Tóm tắt tin tức" value="{{ $tin->TomTat }}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="image" class="col-form-label">Hình ảnh</label>
                                    <input type="file" name="urlHinh" class="form-control" id="image">
                                </div>
                                <div class="mb-3">
                                    Ngày
                                    <input type="date" class="form-control" name="Ngay" placeholder="Ngày" value="{{ $tin->Ngay }}" required>
                                </div>
                                <div class="mb-3">
                                    <label for="description" class="col-form-label">Nội dung</label>
                                    <textarea name="Content" id="description" cols="30" rows="5" class="form-control" placeholder="Nội dung" required>{{ $tin->Content }}</textarea>
                                </div>
                                <div class="mb-3">
                                    <div class="form-group">
                                        <label for="category" class="col-form-label">Chọn loại tin:</label>
                                        <select class="form-control select2" name="idLT" id="category" required>
                                            @foreach ($listTheLoai as $theLoai)
                                                <option value="{{ $theLoai->idTL }}" {{ $tin->idLT == $theLoai->idTL ? 'selected' : '' }}>{{ $theLoai->TenTL }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="form-group">
                                        <label for="status" class="col-form-label">Trạng thái:</label>
                                        <select class="form-control" name="NoiBat" id="status" required>
                                            <option value="1" {{ $tin->NoiBat == 1 ? 'selected' : '' }}>Nổi bật</option>
                                            <option value="0" {{ $tin->NoiBat == 0 ? 'selected' : '' }}>Không nổi bật</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <div class="form-group">
                                        <label for="visibility" class="col-form-label">Hiển thị:</label>
                                        <select class="form-control" name="AnHien" id="visibility" required>
                                            <option value="1" {{ $tin->AnHien == 1 ? 'selected' : '' }}>Hiển thị</option>
                                            <option value="0" {{ $tin->AnHien == 0 ? 'selected' : '' }}>Ẩn</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control" name="slug" placeholder="Slug" value="{{ $tin->slug }}">
                                </div>
                                <div class="modal-footer justify-content-between">
                                    <button type="submit" class="btn btn-primary">Cập nhật tin tức</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection
