@extends('admin.masters.master')
<!-- Content Wrapper. Contains page content -->
@section('content')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Danh mục tin tức</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <button class="btn btn-info "><a href="{{route('logout')}}" class="text-white">Logout</a></button>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            @if (session('message'))
                
            <p class="text-danger">{{session('message')}}</p>
                
            @endif
            <div class="d-flex ">
                <a href="{{route('admin.add')}}">
                    <button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#modal-default"
                        name="them_danhmuc">
                        Thêm danh mục
                    </button>
                </a>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                       
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Tên thể loại</th>
                                        <th scope="col">Thứ tự</th>
                                        <th scope="col">Ân hiện</th>
                                        <th scope="col">Created_at</th>
                                        <th scope="col">Update_at</th>
                                        <th scope="col">Thao tác</th>




                                    </tr>
                                </thead>
                               
                               
                                   <tbody>
                                    @foreach ($theloai as $item)
                                    <tr>
                                        <td>{{$item->idTL}}</td>
                                        <td>{{$item->TenTL}}</td>
                                        <td>{{$item->ThuTu}}</td>
                                        <td>{{$item->AnHien}}</td>
                                        <td>{{$item->created_at}}</td>
                                        <td>{{$item->updated_at}}</td>
                                        <td>
                                            <a href="{{ route('admin.update', ['idTL' => $item->idTL]) }}" class="btn-info">Sửa</a> |
                                            <a href="{{ route('admin.xoa', ['idTL' => $item->idTL]) }}" 
                                               onclick="return confirm('Bạn có chắc muốn xóa?');" class="btn-danger">Xóa</a>
                                        </td>
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

<!-- <div class=" modal fade" id="modal-default">                                           </div> -->
<!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>
@endsection