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
<title>��������</title>
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
					<li><a href="#" style="color:black;">�����˻�</a></li>
					<li><a href="#" style="color:black;">���������Ұ�</a></li>
					<li><a href="http://localhost:8080/ParkSystem/Reservation.jsp" style="color:black;">����</a></li>
					<li><a href="#" style="color:black;">�Խ���</a></li>
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
				<h2>����</h2>
				<span class="sub-title">������ ��� �������� �غ��� ���α׷��� ������ ������. &nbsp;����� �����Ͻø� �������� ����Ʈ�� �̵��մϴ�.</span>
			</div>
			<article class="search-date">
				<div class="date-explain"><strong>*�� ĭ�� Ŭ���Ͽ� ��¥�� �������ּ���.</strong></div>
				<div class="DateBox">
					<input type="text" placeholder="��¥�� �����ϼ���." id="Datepicker1">
					~
					<input type="text" placeholder="��¥�� �����ϼ���." id="Datepicker2">
					<button id="btn_search">�˻�</button>
				</div>
			</article>
			<!-- //article -->
			<main>
			<section>
				<div class="reservation-menu-wrap mt20">
					<article class="reservation-menu-box">
						<ul>
							<li class="reservation" id="all"><a href="#" style="color:black;">��ü</a></li>
							<li class="reservation" id="program"><a href="#" style="color:black;">���� ���α׷�</a></li>
							<li class="reservation" id="facility"><a href="#" style="color:black;">���� �ü�</a></li>
						</ul>
					</article>
				</div>
				<section>
					<h3>���� ����</h3>
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
					<li>ȸ��Ұ�</li>
					<li>0000</li>
					<li>����������޹�ħ</li>
					<li>�̿���å</li>
					<li>����/���޹��� �� ����</li>
					<li>�̸��� ���ܼ����ź�</li>
				</ul>
			</div>
			<div class="footerText">
				<p>��ǥ��:000 ����Ư���� 000 000 300  ����� ��Ϲ�ȣ:123-56-7890234</p>
				<p>����Ǹž� �Ű��ȣ:�� 1234 ���� 000 1004ȣ ������������ å����:000  �Һ������غ�����</p>
				<p>������:1234-5678  FAX:02-1234-5678  0000 @000.COM</p>
				<p>COMPYRIGHT ��000. ALL RIGHTS RESERVED</p>
			</div>
			<div class="footerLogo">
				<img src="image/logo2.png" alt="�ΰ�">
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
			         nextText: '���� ��',
			         prevText: '���� ��'
			  });
			});
		$(function() {
			  $("#Datepicker2").datepicker({
			         changeMonth: true, 
			         changeYear: true,
			         nextText: '���� ��',
			         prevText: '���� ��' 
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