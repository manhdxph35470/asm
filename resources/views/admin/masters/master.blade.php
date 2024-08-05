<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Dashboard</title>
  <!-- <base href="/php1/new/admin/"> -->
  <!-- Google Font: Source Sans Pro -->
  @include('admin.partials.css')

</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">
    @include('admin.partials.header')

    @yield('content')

    @include('admin.partials.footer')
</body>
</html> 
