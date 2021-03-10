<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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

.tab {
  width: 100%;
  height: 50px;
}

.tablinks {
  float: left;
  width: 50%;
  height: 100%;
  border: none;
  outline: none;
  font-size: 16px;
  font-weight: bold;
  color: #fff;
  background-color: #BDBDBD;
}

.tablinks.active {
  color: #000;
  background-color: #01DF74;
}

</style>
<script>
function openTab(evt, tabName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
}

</script>
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
					<li><a href="#" style="color:black;">게시판</a></li>
				</ul>
			</div>
		</div>

</header>

<div class="main" style="width:100%;  background: url(back.jpg); background-size: cover; background-position: center;">
	<div class="articleCard" style="padding-top:50px; ">
		<div class="contents borderBos" style="width:100%;, height: 100%; background-color: #fff;">
			<div class="Indroduc_Top">
				<h2 style="text-align: center;">남산공원<span id="Sub_Top" style="line-height: 70px;margin-left: 10px;font-weight: normal;font-size: 14px;"></span></h2>
			</div>
			<div id="app" class="mopark_list" style="margin-top: 20px;">
				<ul class="bt_gray" style="box-sizing: border-box; border-top: 2px solid #279e51;">
					<li class="pClearfix b_bom" style="padding: 2.308em 0 3.077em; box-sizing: border-box;  height: 270px; position: relative; border-bottom: 1px solid #cdcdcd;">
						<div class="img_wrap" style="box-sizing: border-box; margin-left: 40px; margin-right: 40px; float: left;">
							<img src="intro3.png" style="width: 278px; height: 177px">
						</div> 
						<div class="mopark_cont" style="box-sizing: border-box; float: left; width: calc(100% - 395px); padding: 0 0 0 3.846em;">
						<div class="act_txt" style="box-sizing: border-box; font-size: 16px; color: #454545; line-height: 1.563;">
							<p style="box-sizing: border-box;">남산공원은 서울 도심에 위치하여 시민에게 맑은 공기를 제공하는 자연 휴식처입니다. N서울타워와 남산케이블카 등의 시설이용과 산책, 운동, 휴식 등 다양한 활동이 가능한 여가 생활의 중심지입니다. 남산공원의 정식명칭은 남산도시자연공원입니다.</p>
						</div>
						<div class="txt" style="margin: 2.308em 0 1.692em; position: relative;"><strong style="color: #333; top: 0; left: 0; font-weight: bold; position: absolute;">공원위치</strong> 
							<p style="padding-left: 105px;">서울특별시 중구 삼일대로 231(예장동)</p><br>
						</div> 
						<div class="txt" style="margin-bottom: 0.333em; position: relative;"><strong style="color: #333; top: 0; left: 0; font-weight: bold; position: absolute;">문의전화</strong> 
							<p style="padding-left: 105px;">02-3783-5900</p>
						</div>
						</div> 
					</li>
				</ul>
			</div>
			<div class="view_cont" id="tab1_cl" style="display: block;">
				<div class="tab">
  					<button class="tablinks active" onclick="openTab(event, 'tab1')">공원소개</button>
  					<button class="tablinks" onclick="openTab(event, 'tab2')">이용 시 참고 사항</button>
				</div>
			<div id="tab1"  class="tabcontent" style="display: block; overflow:scroll; width:1200px; height:530px; overflow-x: hidden; background: url(Park_sub_back.jpg); ">
				<div id="tab1_sub" style="margin: 30px 3.077em;">
					<h3 style="font-size: 2.308em; font-weight: 500; padding-bottom: 0.762em; text-align: center;">공원소개</h3>
				<div class="document" style="border-top: 1px solid #454545; border-bottom: 1px solid #ccc; padding: 3.077em 0;">
					<p class="park_txt">&nbsp;</p>
					<ul class="infoList">
						<li><span style="line-height: 1.5;"><b>공원개요</b></span><br></li>
						<li>남산공원은 서울 도심에 위치하여 시민에게 맑은 공기를 제공하는 자연 휴식처입니다. N서울타워와 남산케이블카 등의 시설이용과 산책, 운동, 휴식 등 다양한 활동이 가능한 여가 생활의 중심지입니다. 남산공원의 정식명칭은&nbsp;남산도시자연공원입니다.<br></li>
					</ul><p>&nbsp;</p><p>&nbsp;</p>
					<ul>
						<li><span style="line-height: 1.5;"><b>면적 및 높이</b></span><br></li>
						<li>총 2,896,887㎡<br>높&nbsp;이 : 270m(국토지리정보원, 소수점 절사)</li>
						<li>임 야 : 2,454,140㎡ (84.8%)</li>
						<li>녹지대&nbsp;및 기타시설&nbsp;: 442,747㎡(15.2%)<br><span style="font-size: 10pt;"><br></span><br></li>
						<li><span style="line-height: 1.5;"><b>개원</b></span><br></li>
						<li>1968. 9.&nbsp;10<br><br><br></li><li><span style="line-height: 1.5;"><b>주요시설</b></span><br></li>
						<li>기반시설 : 광장 45,950㎡, 도로 108,530㎡, 산책로 6.7㎞ (북측:3.7㎞/남측:3.0㎞)</li>
						<li>조경시설 : 연못 1개소(1,078㎡), 파고라, 그늘시렁</li>
						<li>운동시설 : 테니스장, 야구장, 궁도장, 배드민턴장</li>
						<li>교양시설 : 도서관, 야외식물원, 안중근의사 기념관</li>
						<li>편익시설 : 주차장, 매점, 음수대, 팔각정, 화장실, 밴치, 타워전망대</li>
						<li>기타시설 : 순환도로 18.9㎞</li>
					</ul>
					<h3 class="subTit"><br></h3>
						<ul class="infoList2">
							<li><span style="line-height: 1.5;"><b>주요식물</b></span><br></li>
							<li>소나무, 단풍, 아카시아, 상수리나무 등 191종 2,881,870주<br><br></li>
						</ul>
				</div>
				</div>
			</div>
			<div id="tab2" class="tabcontent" style="display: none; overflow:scroll; width:1200px; height:530px; overflow-x: hidden; background: url(Park_sub_back.jpg); ">
				<div id="tab2_sub" style="margin: 30px 3.077em;">	
					<h3 style="font-size: 2.308em; font-weight: 500; padding-bottom: 0.762em; text-align: center;">이용 시 참고 사항</h3>		
						<div class="document" style="border-top: 1px solid #454545; border-bottom: 1px solid #ccc; padding: 3.077em 0;">
						<h3 class="subTit">주요 시설 및 이용요금</h3>
						<p><img title="1445764658992221000.jpg" style="height: auto; max-width: 600px;" src="Namsan.jpg">&nbsp;</p><br>
						<div class="infoList" style="font-size: 13px; font-weight: 400;">
							<h3>남산서울타워전망대</h3>
							<ul>		
								<li>이용요금 : 대인 10,000원(단체9,000원), 소인 8,000원(단체7,200원)</li>	
								<li>관람시간 : 주중/일 10:00~23:00, 토 10:00~24:00</li>		
								<li>비고 : 단체 20인이상, 대인(만 13세이상), 소인(3세~12세)</li>		
								<li>전화번호 : 02-3455-9288</li>	
							</ul><br>
							<h3>케이블카</h3>
							<ul>
								<li>이용요금<br>편도 : 대인 7,000원(단체 30인 이상 6,000원), 소인 4,000원(단체 3,500원)<br>왕복 : 대인 9,500원(단체 30인 이상 8,000원), 소인 6,500원(단체 5,500원)<br>65세 이상, 국가유공자, 5.18 민주부상자, 장애인 편도 : 4,000원<br>65세 이상, 국가유공자, 5.18 민주부상자, 장애인 왕복 : 6,500원</li>		
								<li>운행시간 : 10:00~23:00</li>		
								<li>비고 : 단체 30인이상, 소인 기준 36개월 ~ 초등학생</li>		
								<li>전화번호 : 02-753-2403</li>	
							</ul><br>
							<h3>안중근의사기념관</h3>
							<ul>		
								<li>이용요금 : 무료</li>		
								<li>관람시간 : 10:00~18:00(하절기), 10:00~17:00(동절기)</li>		
								<li>전화번호 : 02-3789-1016</li>	
							</ul><br>
							<h3>남산순환도로통행료</h3>
							<ul>		
								<li>이용요금(일반 차량 통해 금지) : 16인 이상 관광버스/6,000원 승용차/4,000원</li>		
								<li>※ 16인 이상 관광버스,&nbsp;장애인복지카드(1,2,3급) 소지자 차량만&nbsp;통행 가능</li>	
							</ul><br>
							<h3>유아숲체험장</h3>	
							<ul>		
								<li>이용요금 : 무료(유치원,어린이집5~7세 유아,초등저학년 동반 가족)</li>		
								<li>이용시간 : 09:00~18:00(하절기), 09:00~17:00(동절기)<br>평일 단체 예약, 주말 개인 자율이용</li>		
								<li>전화번호 : 02-3783-5900</li>
							</ul><br><br>
						</div>
						</div>
					</div>
				</div>
			</div>
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
			<img src="logo2.png" alt="로고">
		</div>
	 </div>
</footer>
</div>
<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=uw8oux3v8z"></script>
<script>
var mapOptions = {
    center: new naver.maps.LatLng(37.3595704, 127.105399),
    zoom: 10
};


var map = new naver.maps.Map('map', mapOptions);
</script>

</body>
</html>
