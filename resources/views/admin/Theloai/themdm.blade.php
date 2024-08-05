@extends('admin.masters.master')
@section('title')
    Thêm Danh Mục Tin
@endsection

@section('content')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Thêm Danh Mục Tin</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Thêm Danh Mục Tin</li>
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
                            <form action="{{ route('admin.store') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="modal-footer justify-content-between">
                                    <a href="{{ route('admin.index') }}">
                                        <button type="button" class="btn btn-primary">Quay lại</button>
                                    </a>
                                </div>
                                <div class="modal-body">
                                    <div class="mb-3">
                                        <input type="text" class="form-control" name="idTL" placeholder="Mã danh mục" disabled>
                                    </div>
                                    <div class="mb-3">
                                        <label for="name" class="form-label">Tên danh mục</label>
                                        <input type="text" class="form-control" name="TenTL" placeholder="Tên danh mục">
                                    </div>
                                    <div class="mb-3">
                                        <label for="order" class="form-label">Thứ tự</label>
                                        <input type="number" name="ThuTu" class="form-control" id="ThuTu" value="0">
                                    </div>
                                    <div class="mb-3">
                                        <label for="AnHien" class="form-label">Hiển thị</label>
                                        <select name="AnHien" class="form-select" id="AnHien">
                                            <option value="1" selected>Hiển thị</option>
                                            <option value="0">Ẩn</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer justify-content-between">
                                    <button type="submit" class="btn btn-primary">Thêm danh mục</button>
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