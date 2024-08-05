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
                    <h1>Tin tức</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Tin tức</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">

            <div class="d-flex ">
                <a href="{{route('tin.addPro')}}">
                    <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#modal-default"
                        name="themtintuc">
                        Thêm tin tức
                    </button>
                </a>
            </div>


            <div class="row mt-5">
                <div class="col-12">
                    <div class="card">
                        
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped"style="text-align:center;">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Tiêu đề</th>
                                        <th scope="col">Tóm tắt</th>
                                        <th scope="col">Nội dung</th>
                                        <th scope="col">Hình ảnh</th>
                                        <th scope="col">IDTL</th>
                                        <th scope="col">Nổi bật</th>
                                        <th scope="col">Ẩn hiện</th>
                                        <th scope="col">Slug</th>
                                        <th scope="col">Created_at</th>
                                        <th scope="col">Update_at</th>
                                        <th scope="col">Thao tác</th>


                                        
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    @foreach ($tin as $t)
                                        
                               
                                    
                                        <tr>
                                        <td>{{ $t->idTin }}</td>
                                        <td>{{ $t->TieuDe }}</td>
                                        <td>{{ $t->TomTat }}</td>
                                        <td>{{ $t->Content }}</td>
                                        <td><img src="{{ config('app.url') }}/public/storage/public/images/posts/{{ $t->urlHinh }}" alt="" width="250px"></td>
                                        <td>{{ $t->idLT }}</td>
                                        <td>{{ $t->NoiBat }}</td>
                                        <td>{{ $t->AnHien }}</td>
                                        <td>{{ $t->slug }}</td>
                                        <td>{{ $t->created_at }}</td>
                                        <td>{{ $t->updated_at }}</td>
                                            <td><a href="{{ route('tin.update', ['idTin' => $t->idTin]) }}"><input type="button" value="Sửa"></a>
                                            <a href="{{ route('tin.xoa', ['idTin' => $t->idTin]) }}"
                                                onclick="return confirm('Bạn có chắc chắn muốn xóa không?')"><input
                                                    type="button" value="Xóa"></a></td>
                                        </tr>
                                    
                                        @endforeach
                                    </tbody>
                            </table>
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
<!-- 

< /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>
@endsection