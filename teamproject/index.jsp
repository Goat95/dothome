<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"
    />
    <title>공연&전시</title>
    <link rel="stylesheet" href="assets/css/reset.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <script
      src="https://kit.fontawesome.com/20210039bb.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <nav id="nav">
      <a href="index.jsp">
        <i class="fas fa-home"></i>
        <h1>공연&전시</h1>
      </a>
      <ul class="menu">
        <li><a href="Park_search1.jsp">공원</a></li>
        <li><a href="main.jsp">공연&전시</a></li>
      </ul>
    </nav>
    <!-- //nav -->

    <div id="contents">
      <div id="section1">
        <h2 style="background-image:url('indeback.jpg'); background-repeat : no-repeat; background-size : cover;" ><a href="Park_search1.jsp">공원</a></h2>
      </div>
      <div id="section2">
        <h2 style="background-image:url('indexback.jpg'); background-repeat : no-repeat; background-size : cover;"><a href="main.jsp">공연&전시</a></h2>
      </div>
    </div>
    <!-- //contents -->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script>
      // var nav = $(".menu li");
      // var cont = $("#contents > div");

      // nav.click(function (e) {
      //   e.preventDefault();
      //   var target = $(this);
      //   var index = target.index();
      //   var section = cont.eq(index);
      //   var offset = section.offset().top;
      //   $("html,body").animate({ scrollTop: offset }, 600, "easeInOutExpo");
      // });

      // $(window).scroll(function () {
      //   var wScroll = $(this).scrollTop();

      //   if (wScroll >= cont.eq(0).offset().top) {
      //     nav.removeClass("active");
      //     nav.eq(0).addClass("active");
      //   }
      //   if (wScroll >= cont.eq(1).offset().top) {
      //     nav.removeClass("active");
      //     nav.eq(1).addClass("active");
      //   }
      //   if (wScroll >= cont.eq(2).offset().top) {
      //     nav.removeClass("active");
      //     nav.eq(2).addClass("active");
      //   }
      //   if (wScroll >= cont.eq(3).offset().top) {
      //     nav.removeClass("active");
      //     nav.eq(3).addClass("active");
      //   }
      //   if (wScroll >= cont.eq(4).offset().top) {
      //     nav.removeClass("active");
      //     nav.eq(4).addClass("active");
      //   }
      //   if (wScroll >= cont.eq(5).offset().top) {
      //     nav.removeClass("active");
      //     nav.eq(5).addClass("active");
      //   }
      // });

      // $(".mNav").click(function () {
      //   // $(".menu").css("display", "block");
      //   // $(".menu").show();
      //   // $(".menu").slideDown();
      //   $(".menu").toggle();
      // });

      // $(window).resize(function () {
      //   var wWidth = $(window).width();
      //   //화면 크기가 800 이상일 때 display:none을 삭제
      //   if (wWidth > 800 && $(".menu").is(":hidden")) {
      //     $(".menu").removeAttr("style");
      //   }
      // });
    </script>
  </body>
</html>
