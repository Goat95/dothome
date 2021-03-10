<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/reservation.css">
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
<title>공원예약</title>
</head>
<body>
    <div class="contentWrap">
	<header>
		<div id ="header-img-background" style="width: 100%; height: 90px; background-image: url(image/arplan_back.jpg);">
			<div class="header-TopBox" style="width: 980px; min-width: 980px; height: 90px; margin:0 auto;">
				<div class="header-sns-images">
					<ul>
						<li>
							<div class="Logo" style="width: 170px; height: 70px;">
								<h1><img src="image/logo.png" alt="http://localhost:8090/WebTest/NewFile.jsp" style="width: 100%; height: 100%; padding-top: 5px; cursor: pointer;"></h1>
							</div>
						</li>
						<li>
							<a href="#"><img src="image/login_icon.png" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
							<a href="#"><img src="image/snsicon1.jpg" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
							<a href="#"><img src="image/snsicon2.jpg" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
							<a href="#"><img src="image/snsicon3.jpg" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
							<a href="#"><img src="image/snsicon4.jpg" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="header-Menu-background">
			<div class="header-MenuBox">
				<ul>
					<li><a href="http://localhost:8080/ParkSystem/Main.jsp" style="color:black;">Main</a></li>
					<li><a href="#" style="color:black;">공원검색</a></li>
					<li><a href="#" style="color:black;">국립공원소개</a></li>
					<li><a href="http://localhost:8080/ParkSystem/Reservation.jsp" style="color:black;">예약</a></li>
					<li><a href="#" style="color:black;">게시판</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!-- //header -->
	<div class="articleCard" style="padding-top:50px;">
	<div class="contents borderBox" style="width:100%; height:100;">
	<section class="container">
		<div class="contents">
			<div class="title-area">
				<h2>예약</h2>
				<span class="sub-title">전국의 산과 공원에서 준비한 프로그램에 참여해 보세요. &nbsp;목록을 선택하시면 공공예약 사이트로 이동합니다.</span>
			</div>
			<article class="search-date">
				<div class="date-explain"><strong>*빈 칸을 클릭하여 날짜를 선택해주세요.</strong></div>
				<div class="DateBox">
					<input type="text" placeholder="날짜를 선택하세요." id="Datepicker1">
					~
					<input type="text" placeholder="날짜를 선택하세요." id="Datepicker2">
					<button id="btn_search">검색</button>
				</div>
			</article>
			<!-- //article -->
			<main>
			<section>
				<div class="reservation-menu-wrap mt20">
					<article class="reservation-menu-box">
						<ul>
							<li class="reservation" id="all"><a href="#" style="color:black;">전체</a></li>
							<li class="reservation" id="program"><a href="#" style="color:black;">공원 프로그램</a></li>
							<li class="reservation" id="facility"><a href="#" style="color:black;">공원 시설</a></li>
						</ul>
					</article>
				</div>
				<section>
					<h3>예약 내용</h3>
				</section>
			</section>
			</main>
		</div>
	</section>
			</div>
		</div>
	<!-- //container -->
	
	<footer>	
		 <div class="footerBox">	
			<div class="footernav clearfix">
				<ul>
					<li>회사소개</li>
					<li>0000</li>
					<li>개인정보취급방침</li>
					<li>이용정책</li>
					<li>입점/제휴문의 및 광고</li>
					<li>이메일 문단수집거부</li>
				</ul>
			</div>
			<div class="footerText">
				<p>대표자:000 서울특별시 000 000 300  사업자 등록번호:123-56-7890234</p>
				<p>통신판매업 신고번호:제 1234 서울 000 1004호 개인정보관리 책임자:000  소비자피해보상보험</p>
				<p>고객센터:1234-5678  FAX:02-1234-5678  0000 @000.COM</p>
				<p>COMPYRIGHT ⓒ000. ALL RIGHTS RESERVED</p>
			</div>
			<div class="footerLogo">
				<img src="image/logo2.png" alt="로고">
			</div>
		 </div>
	</footer>
	<!-- //footer -->
	</div>
	<script>
		$(function() {
			  $("#Datepicker1").datepicker({
			         changeMonth: true, 
			         changeYear: true,
			         nextText: '다음 달',
			         prevText: '이전 달'
			  });
			});
		$(function() {
			  $("#Datepicker2").datepicker({
			         changeMonth: true, 
			         changeYear: true,
			         nextText: '다음 달',
			         prevText: '이전 달' 
			  });
			});
		$("#all").click(function(){
			$(this).addClass("on");
			$(this).siblings().removeClass("on");
		});
		
		$("#program").click(function(){
			$(this).addClass("on");
			$(this).siblings().removeClass("on");
		});
		
		$("#facility").click(function(){
			$(this).addClass("on");
			$(this).siblings().removeClass("on");
		});
	</script>
</body>
</html>