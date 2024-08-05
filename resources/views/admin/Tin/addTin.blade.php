@extends('admin.masters.master')
@section('title')
    Thêm tin tức
@endsection

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Thêm tin tức</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Thêm tin tức</li>
                        </ol>
                    </div>
                </div>
            </div><!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <!-- /.card-header -->
                            <div class="card-body">
                                <form action="{{ route('tin.addPro') }}" method="POST" enctype="multipart/form-data">
                                    @csrf
                                    <div class="modal-footer justify-content-between">
                                        <a href="#"><button type="button" class="btn btn-primary">Quay
                                                lại</button></a>
                                    </div>
                                    <div class="modal-body">
                                        <div class="mb-3">
                                            <input type="text" class="form-control" name="TieuDe"
                                                placeholder="Tiêu đề tin tức" required>
                                        </div>
                                        <div class="mb-3">
                                            <input type="text" class="form-control" name="TomTat"
                                                placeholder="Tóm tắt tin tức" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="image" class="col-form-label">Hình ảnh</label>
                                            <input type="file" name="urlHinh" class="form-control" id="image">
                                        </div>
                                        <div class="mb-3">
                                            <input type="date" class="form-control" name="Ngay" placeholder="Ngày"
                                                required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="description" class="col-form-label">Nội dung</label>
                                            <textarea name="Content" id="Content" cols="30" rows="5" class="form-control" placeholder="Nội dung"
                                                required></textarea>

                                        </div>
                                        <div class="mb-3">
                                            <div class="form-group">
                                                <label for="category" class="col-form-label">Chọn loại tin:</label>
                                                <select class="form-control select2" name="idLT" id="category" required>
                                                    <option selected disabled>Chọn loại tin</option>
                                                    @foreach ($listTheLoai as $theLoai)
                                                        <option value="{{ $theLoai->idTL }}">{{ $theLoai->TenTL }}</option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="form-group">
                                                <label for="status" class="col-form-label">Trạng thái:</label>
                                                <select class="form-control" name="NoiBat" id="status" required>
                                                    <option value="1">Nổi bật</option>
                                                    <option value="0">Không nổi bật</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <div class="form-group">
                                                <label for="visibility" class="col-form-label">Hiển thị:</label>
                                                <select class="form-control" name="AnHien" id="visibility" required>
                                                    <option value="1">Hiển thị</option>
                                                    <option value="0">Ẩn</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <input type="text" class="form-control" name="slug" placeholder="Slug">
                                        </div>
                                    </div>
                                    <div class="modal-footer justify-content-between">
                                        <button type="submit" class="btn btn-primary">Thêm tin tức</button>
                                    </div>
                                </form>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </section>
        <!-- /.content -->
        {{-- @include('admin.partials.ckeditor') --}}
    </div>

    <!-- /.content-wrapper -->
@endsection
