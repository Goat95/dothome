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
    <title>공연&전시 - 자세히보기</title>
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
        <li><a href="main.jsp">이달의 공연</a></li>
        <li><a href="list.jsp">공연&전시</a></li>
        <li><a href="discount.jsp">티켓할인</a></li>
        <li><a href="resinfo.jsp">예매조회</a></li>
        <li><a href="#section4">게시판</a></li>
      </ul>
    </nav>
    <!-- //nav -->

    <div class="item-head">
      <div class="container">
        <div class="row">
          <div class="item-img">
            <img
              src="assets/img/무용,뮤지컬,클래식/시나위 몽.jpg" height="600"
              alt=""
            />
          </div>
          <div class="info-head">
            <h2>시나위, 몽</h2>
            <div class="info">
              <div>
                <h3 class="date">공연기간</h3>
                <p>2020-10-27~2020-11-13</p>
              </div>
              <div>
                <h3 class="time">공연시간</h3>
                <p>수~금 20시</p>
                <p>토 14시, 18시, 일 15시</p>
              </div>
              <div>
                <h3 class="age">연령</h3>
                <p>8세 이상(취학아동 이상)</p>
              </div>
              <div>
                <h3 class="place">장소</h3>
                <p>정동극장 서울</p>
              </div>
              <div>
                <h3 class="description">설명</h3>
                <p>정동극장 예술단 정기공연<br>
                ※ 티켓판매 오픈일시 : 2020년 10월 19일(월) 10:00am <br>
                ※ 정동극장 홈페이지와 인터파크 예매 좌석은 연동됩니다. ※ 코로나19 확산 방지 및 예방을 위해 ‘한 칸 띄어 앉기’ 좌석제로 운영됩니다.<br> 
                ※ 무대가 높은 관계로 A열 1~7번, B열 1~8번, C열 1~7번 좌석은 관람에 불편함이 있을 수 있으니, 예매시 참고하시기 바랍니다.</p>
              </div>
              <div>
                <h3 class="sales">금액</h3>
                <p>30,000원</p>
              </div>
              <p class="Detail">
                ※ 신종코로나 바이러스 감염증 대처 계획안내<br />
                1. 정동극장 경주브랜드공연 관람을 위한 공연장 출입 시 전 관객을
                대상으로 체온을 측정합니다. 측정온도 37.5도 이상(발열기준온도)일
                경우 공연관람이 불가할 수 있으며, 안내원의 지시에 따라 주시기
                바랍니다. <br />
                2. 매표소, 하우스를 포함한 극장 스텝들의 마스크 착용 및
                체온측정을 의무화하고 있습니다. <br />
                3. 객석을 포함한 극장 시설에 대해 주기적으로 방역을 실시하고
                있습니다. <br />
                4. 공연장 내 손소독제가 비치되어 있으며, 공연장을 찾아 주시는
                관객분들께서는 마스크 착용을 의무화해 주시기 바랍니다. 마스크
                미착용 시 객석 입장이 제한될 수 있습니다. <br />
                5. 공연관람 중에도 마스크를 착용하신 채로 관람 부탁드립니다.
                <br />
                6. 감염예방을 위해 티켓 예매 시 지정한 좌석은 정부방침에 따라
                '한칸 띄어 앉기' 시행을 위해 현장에서 변동될 수 있습니다.
                정동극장은 공연기간 동안 철저한 위생관리로 안전한 공연관람을
                위해 최선을 다하겠습니다. 관객분들의 양해와 협조 부탁드립니다.
              </p>
            </div>
          </div>
          <div class="reservation-btn">
            <a href="reservation2.jsp">예매하기</a>
          </div>
        </div>
      </div>
    </div>

    <footer id="footer">
      <div id="footer_sns">
        <div class="container">
          <div class="footer_sns">
            <ul>
              <li class="icon s1">
                <a href="#"><span class="ir_pm">트위터</span></a>
              </li>
              <li class="icon s2">
                <a href="#"><span class="ir_pm">페이스북</span></a>
              </li>
              <li class="icon s3">
                <a href="#"><span class="ir_pm">인스타그램</span></a>
              </li>
              <li class="icon s4">
                <a href="#"><span class="ir_pm">구글 플레이</span></a>
              </li>
              <li class="icon s5">
                <a href="#"><span class="ir_pm">아이폰 앱스토어</span></a>
              </li>
            </ul>
            <div class="tel">
              <a href="#">ARS <em>1544-9999</em></a>
            </div>
          </div>
        </div>
      </div>
      <div id="footer_info">
        <div class="container">
          <div class="row">
            <div class="footer_info">
              <h2>공연&전시</h2>
              <ul>
                <li><a href="#">회사소개</a></li>
                <li><a href="#">채용정보</a></li>
                <li><a href="#">제휴/광고/부대사업 문의</a></li>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">고객센터</a></li>
                <li><a href="#">윤리경영</a></li>
              </ul>
              <address>
                <p>
                  강릉시 범일로 579번길 24 (내곡동) <br /><span class="bar2"
                    >대표자명 Goat</span
                  >
                  개인정보보호 책임자<br /><span class="bar2"
                    >사업자등록번호 000-00-00000</span
                  >
                  통신판매업신고번호 제 000호
                </p>
                <p>Copyright 2020 by Goat</p>
              </address>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- //footer -->
  </body>
</html>
