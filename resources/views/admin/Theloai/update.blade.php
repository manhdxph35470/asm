@extends('admin.masters.master')
@section('title')
    Sửa Danh Mục Tin
@endsection

@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Sửa Danh Mục Tin</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Sửa Danh Mục Tin</li>
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
                            <form action="{{ route('admin.updatePro', ['idTL' => $theloai->idTL ]) }}" method="POST">
                                @csrf
                                <div class="mb-3">
                                    <label for="TenTL" class="form-label">Tên danh mục</label>
                                    <input type="text" name="TenTL" class="form-control" id="TenTL" required value="{{ old('TenTL', $theloai->TenTL) }}">
                                </div>
                                <div class="mb-3">
                                    <label for="ThuTu" class="form-label">Thứ tự</label>
                                    <input type="number" name="ThuTu" class="form-control" id="ThuTu" value="{{ old('ThuTu', $theloai->ThuTu) }}">
                                </div>
                                <div class="mb-3">
                                    <label for="AnHien" class="form-label">Hiển thị</label>
                                    <select name="AnHien" class="form-select" id="AnHien">
                                        <option value="1" {{ old('AnHien', $theloai->AnHien) == 1 ? 'selected' : '' }}>Hiển thị</option>
                                        <option value="0" {{ old('AnHien', $theloai->AnHien) == 0 ? 'selected' : '' }}>Ẩn</option>
                                    </select>
                                </div>
                                <div class="modal-footer justify-content-between">
                                    <a href="{{ route('admin.index') }}">
                                        <button type="button" class="btn btn-secondary">Quay lại</button>
                                    </a>
                                    <button type="submit" class="btn btn-primary">Sửa</button>
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
</div>
<!-- /.content-wrapper -->
@endsection


   
