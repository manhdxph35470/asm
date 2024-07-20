<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="en-us">
  <head>
  <meta charset="utf-8">
  <title>Reader | Hugo Personal Blog Template</title>

  <!-- mobile responsive meta -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
          @include('layout.partials.css')
</head>
<body>
  <!-- navigation -->
<header class="navigation fixed-top">
  @include('layout.partials.header_top')
</header>
<!-- /navigation -->

<!-- start of banner -->
<div class="banner text-center">
  @include('layout.partials.banner')
</div>
<!-- end of banner -->

@yield('content')

<footer class="footer">
 @include('layout.partials.footer')
  </footer>


  <!-- JS Plugins -->
  @include('layout.partials.js')
</body>
</html>
