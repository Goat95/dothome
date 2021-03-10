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

/*header �� */
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
					<li><a href="Park_search1.jsp" style="color:black;">�����˻�</a></li>
					<li><a href="Park_introduce.jsp" style="color:black;">�α�����Ұ�</a></li>
					<li><a href="parkres.html" style="color:black;">����</a></li>
					<li><a href="#" style="color:black;">�Խ���</a></li>
				</ul>
			</div>
		</div>

</header>

<div class="main" style="width:100%;  background: url(back.jpg); background-size: cover; background-position: center;">
	<div class="articleCard" style="padding-top:50px; ">
		<div class="contents borderBos" style="width:100%;, height: 100%; background-color: #fff;">
			<div class="Indroduc_Top">
				<h2 style="text-align: center;">��ȭ���ùο�������<span id="Sub_Top" style="line-height: 70px;margin-left: 10px;font-weight: normal;font-size: 14px;"></span></h2>
			</div>
			<div id="app" class="mopark_list" style="margin-top: 20px;">
				<ul class="bt_gray" style="box-sizing: border-box; border-top: 2px solid #279e51;">
					<li class="pClearfix b_bom" style="padding: 2.308em 0 3.077em; box-sizing: border-box;  height: 270px; position: relative; border-bottom: 1px solid #cdcdcd;">
						<div class="img_wrap" style="box-sizing: border-box; margin-left: 40px; margin-right: 40px; float: left;">
							<img src="intro2.png" style="width: 278px; height: 177px">
						</div> 
						<div class="mopark_cont" style="box-sizing: border-box; float: left; width: calc(100% - 395px); padding: 0 0 0 3.846em;">
						<div class="act_txt" style="box-sizing: border-box; font-size: 16px; color: #454545; line-height: 1.563;">
							<p style="box-sizing: border-box;">��ȭ�� �� �����Ÿ��� �ִ� �ڸ��� ���Ӱ� ź���� ����ù��� ���� ���� '�ùο�������' '�ùο�������'�� �����Ÿ��� ���������� ������ �ϵ����� ��������� �������� �ù� �޽İ���, �׸��� �߽ɺ��� ���������� �� ������ �̾��� ���ſ� ����, �̷��� ��췯���� ȭ���� �����Դϴ�.</p>
						</div>
						<div class="txt" style="margin: 2.308em 0 1.692em; position: relative;"><strong style="color: #333; top: 0; left: 0; font-weight: bold; position: absolute;">������ġ</strong> 
							<p style="padding-left: 105px;">����Ư���� ���α� ����1�� 45</p><br>
						</div> 
						<div class="txt" style="margin-bottom: 0.333em; position: relative;"><strong style="color: #333; top: 0; left: 0; font-weight: bold; position: absolute;">������ȭ</strong> 
							<p style="padding-left: 105px;">02-722-9598</p>
						</div>
						</div> 
					</li>
				</ul>
			</div>
			<div class="view_cont" id="tab1_cl" style="display: block;">
				<div class="tab">
  					<button class="tablinks active" onclick="openTab(event, 'tab1')">�����Ұ�</button>
  					<button class="tablinks" onclick="openTab(event, 'tab2')">�̿� �� ���� ����</button>
				</div>
			<div id="tab1"  class="tabcontent" style="display: block; overflow:scroll; width:1200px; height:530px; overflow-x: hidden; background: url(Park_sub_back.jpg); ">
				<div id="tab1_sub" style="margin: 30px 3.077em;">
					<h3 style="font-size: 2.308em; font-weight: 500; padding-bottom: 0.762em; text-align: center;">�����Ұ�</h3>
				<div class="document" style="border-top: 1px solid #454545; border-bottom: 1px solid #ccc; padding: 3.077em 0;">
					<p class="park_txt">&nbsp;</p>
					<ul class="infoList">
						<li><span style="line-height: 1.5;"><b>��������</b></span><br></li>
						<li>��ȭ�� �� �����Ÿ��� �ִ� �ڸ��� ���Ӱ� ź���� ����ù��� ���� ���� '�ùο�������' '�ùο�������'�� �����Ÿ��� ���������� ������ �ϵ����� ��������� �������� �ù� �޽İ���, �׸��� �߽ɺ��� ���������� �� ������ �̾��� ���ſ� ����, �̷��� ��췯���� ȭ���� �����Դϴ�.<br></li>
					</ul><p>&nbsp;</p><p>&nbsp;</p>
					<ul>
						<li><span style="line-height: 1.5;"><b>����</b></span><br></li>
						<li>8,948.1��</li>
						<li><span style="line-height: 1.5;"><b><br><br>����</b></span><br></li>
						<li>1999.01.01<br><br><br></li><li><span style="line-height: 1.5;"><b>�ֿ�ü�</b></span><br></li>
						<li>�� �� �� �� : ������¡�� 6����, ������� 4����, ���� 22��, ȭ��6����</li>
						<li>�� �� �� �� : ȭ�������� 35��</li>
						<li>�� �� �� �� : ����� 4��, ������ 23��, ����� 28��, ���ֳ���� 22��</li>
						<li>�� �� �� �� : �������� 3,280��, �������� 920��, �ްԸ��� 1,670��, ������ 3,078��</li>
						<li>�������� ������ : 9��</li>
					</ul>
					<h3 class="subTit"><br></h3>
						<ul class="infoList2">
							<li><span style="line-height: 1.5;"><b>�ֿ�Ĺ�</b></span><br></li>
							<li>�� �� : �ҳ���, ��Ƽ����, ��ճ����� 27�� 5,535��<br></li>
							<li>�� ȭ : �ƹ���, ��â��, ���õ� 3,692��<br><br></li>
						</ul>
				</div>
				</div>
			</div>
			<div id="tab2" class="tabcontent" style="display: none; overflow:scroll; width:1200px; height:530px; overflow-x: hidden; background: url(Park_sub_back.jpg); ">
				<div id="tab2_sub" style="margin: 30px 3.077em;">	
					<h3 style="font-size: 2.308em; font-weight: 500; padding-bottom: 0.762em; text-align: center;">�̿� �� ���� ����</h3>		
						<div class="document" style="border-top: 1px solid #454545; border-bottom: 1px solid #ccc; padding: 3.077em 0;">
						<div class="infoList" style="font-size: 13px; font-weight: 400;">
							<h3>�Ϲݻ���</h3>
							<ul>		
								<li>������ �����ϰ� �̿��մϴ�.
									���߱����� �̿��� �ּ���.
									��买, �ü���, Ǯ�� ������ ��ȣ�մϴ�.
									�߻�������ȣ�� ���� ���Ĺ� ������ �����մϴ�.
									�߿�, ������� �� ���� �ǿ��� �ʽ��ϴ�.
									�ݷ������� ���°� ������ ������ �̿뿡 �������� ������ ������ �����Ͽ� �ֽñ� �ٶ��ϴ�.
									����/����/�Ҷ������� ���� �ʽ��ϴ�.
									������� �ǰ��� ���ñ� �ٶ��ϴ�.</li>	
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
			<img src="logo2.png" alt="�ΰ�">
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
