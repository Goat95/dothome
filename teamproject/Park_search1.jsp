<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import = "com.jsp.db.*"%> 
   <%@ page import = "java.util.ArrayList"%>
   <%@ page import = "java.sql.DriverManager"%>
   <%@ page import = "java.sql.Connection"%>
   <%@ page import = "java.sql.PreparedStatement"%>
   <%@ page import = "java.sql.ResultSet"%>
   <%@ page import = "java.sql.SQLException"%>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공원 검색</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">

	<style>
	
	@charset "utf-8";

*{margin: 0;padding: 0;}
ul li{list-style:none}

a{text-decoration:none;}
a:link,a:visited{color:#000;}
.clearfix:after{clear:both; display: block; content: "";}

	html{height: 100%;}

.topNav{width: 100%; height: 40px; background-color: #0044af;}

.header-Menu-background{width: 100%; height: 65px; background-color: #fff; border-bottom: 5px solid #0e73a7; }
.header-MenuBox{width: 980px; height: 65px; margin:0 auto;}
.header-MenuBox ul{display: flex; }
.topMenuBtn.active{color: #fff; background-color:#0e73a7; }
.header-MenuBox ul li{float:left; width: 100%; height: 100%; line-height:65px; text-align: center; font-size:20px; color:#14272e; border-left: 1px solid #eee; box-sizing: border-box;}
.header-MenuBox ul li a{display: block; transition: all 0.2s;}
.header-MenuBox ul li a:hover{color:#fff; background-color:#0e73a7;}
.header-MenuBox ul li:last-child{border-right: 1px solid #eee;}


.leftNav{width: 1200px; 
	min-width : 1200px;
	margin:0 auto;}

.leftNav ul {float: left;}
.leftNav ul li{float: left; width: 120px; height: 40px;line-height:40px; background-color: #00163b; margin-right: 5px; color:#fff; text-align:center; cursor:pointer; transition: 0.2s;}
.leftNav ul li:hover{background-color: #fff; color:#000;}

.rightNav {width: 1200px; 
	min-width : 1200px;
	 margin:0 auto;}
.rightNav ul li {cursor:pointer; float:right; line-height: 40px; text-align: center; color:#fff; font-size:14px; margin-left: 15px;}
.plus{font-size:16px; width: 18px; height: 18px;line-height: 16px; background-color: #fff; color:#585858;margin-top: 12px; text-align:center; cursor: pointer; }
.minus{font-size:22px; width: 18px; height: 18px;line-height: 16px; background-color: #fff; color:#585858;margin-top: 12px; text-align:center; margin-right: -10px; cursor: pointer;}
.plus:hover{background-color: #585858; color: #fff;}
.minus:hover{background-color: #585858; color: #fff;}

.topMenu{width: 100%; height: 120px; background-color: #fff;}
.topMenuBox{width: 1200px; min-width:1200px; margin:0 auto;}
.rightMenu{width: 100%; max-width:1200px; margin: 0 auto; }
.rightMenu ul li{float: right; line-height: 120px; margin-left: 35px;}
.rightMenu ul li img{padding-top:35px; cursor: pointer;}
.rightMenu ul li a{color:#585858; font-size:20px; font-weight:bold; box-sizing: border-box; transition:0.4s;}
.rightMenu ul li a:hover{border-bottom:3px solid #fff;}

.Logo{float: left; cursor: pointer;}
.Logo h1{padding-top: 15px;}

/*header 끝 */
.articleCard{width: 1200px; height: 900px; min-width: 1200px; margin:0 auto;}
.articleCard > ul > li{float: left;}
.articleCard > ul > li:first-child {width: 75%; height: 450px;}
.articleCard > ul > li:nth-child(2) {width: 25%; height: 450px;}
 
footer{width: 100vw; height:170px; background-color: #fff; margin-top: 70px; }
.footerBox{position:relative;
    width: 1200px;
	min-width : 1200px;
	height: 170px;
	 margin:0 auto;}

.footernav{position: absolute; top: 25px; right: 110px;}
.footernav ul li {cursor:pointer; float: left; padding:0 17px; font-size:15px;text-align: center;  position: relative;}
.footernav ul li:before{content:""; display: block; width: 1.4px; height: 12px; background-color: #000; position: absolute; top: 5px; left: 0px;}
.footernav ul li:first-child:before {display:none; }

.footerText{position: absolute; top:57px; right: 300px;}
 .footerText p{margin:5px 0px; font-size:13.5px; color: #585858;}

.footerLogo {position:absolute; top: 20px; left: 40px;}
 .footerLogo img{width: 200px;}
.rightMenu > ul > li > a{color:#fff;}

	</style>
</head>
<body>

<header>
	<div id ="header-img-background" style="width: 100%; height: 90px; background-image: url(arplan_back.jpg);">
		<div class="header-TopBox" style="width: 980px; min-width: 980px; height: 90px; margin:0 auto;">
			<div class="header-sns-images">
				<ul>
					<li>
						<div class="Logo" style="width: 170px; height: 70px;">
							<a href="index.jsp"><h1><img src="logo2.png" style="width:30; height: 30; padding-top: 5px; cursor: pointer;"></h1></a>
						</div>
					</li>
					<li>
						<a href="#"><img src="login_icon.png" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
						<a href="#"><img src="snsicon1.jpg" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
						<a href="#"><img src="snsicon2.jpg" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
						<a href="#"><img src="snsicon3.jpg" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
						<a href="#"><img src="snsicon4.jpg" alt="" style="float: right; width: 30px; padding-top: 30px; padding-left: 5px;"></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="header-Menu-background">
			<div class="header-MenuBox">
				<ul>
					<li><a href="Park_search1.jsp" style="color:black;">공원검색</a></li>
					<li><a href="Park_introduce.jsp" style="color:black;">인기공원소개</a></li>
					<li><a href="parkres.html" style="color:black;">예약</a></li>
					<li><a href="board.jsp" style="color:black;">게시판</a></li>
				</ul>
			</div>
		</div>

</header>

<div class="main" style="width:100%;  background: url(back.jpg); background-size: cover; background-position: center;">
	<div class="articleCard" style="padding-top:50px; ">
		<ul class="clearfix">
			<li style="width:40%;height:600px; box-sizing: border-box; border-right:1px solid #000;position: relative; background-color: #fff;">
				<div class="notice">
					<form action="Park_search2.jsp" method="post">
						<span style="display: inline-block;width: 84px;margin-right: 15px;text-align: right;">공원 구분</span>
						<select name="sk" style="width: 267px; height: 35px;margin-top: 10px;">
							<option value="Park_Name">공원명</option>
							<option value="Park_Division">공원 구분</option>
							<option value="Management_Agency">관할 자치구</option>
						</select><br>
						<span style="display: inline-block;width: 84px;margin-right: 15px;text-align: right;">공원명</span>
						<input type="text" name="sv" style="width: 168px; height: 33px;margin-top: 10px;">
						<input type="submit" value="검 색" style="width: 83px; margin-left: 5px; background-color: #fece4c; height: 35px;">
					</form>
							<br><hr color="grey">
        			<div class="Park_db" style="display: block; overflow:scroll; overflow-x: hidden; width:92.5%; height:445px; position: relative; padding: 20px 15px 20px 20px;">
        			<h3 style="font-size:1.0em;">

   					<div class="list">
   					<ul>
   					<li id="1">
						<dl>
		
						</dl>
					</li>
					
					</ul>
					</div>

			
					
					</h3>
        			</div>
				</div>
			</li>
			<li style="width:60%;height:600px;">
				<h3 style="margin-left:20px;"></h3>
				<div id="map" style="width:90%; height:100%; margin:0 auto;"></div>
			</li>
	<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uw8oux3v8z"></script>
			
	<script>
	var map = new naver.maps.Map('map', mapOptions);
	var mapOptions = {
    center: new naver.maps.LatLng(37.1956740, 127.7429380),
    zoom: 10
	};
	</script>

		</ul>
		
	</div>
	
</div>

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
				<img src="logo2.png" alt="http://localhost:8090/WebTest/Park_search.jsp">
			</div>
	 	</div>
	</footer>



</body>

</html>
