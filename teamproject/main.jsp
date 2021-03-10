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
    <title>공연&전시 - 이달의 공연</title>
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/reset.css" />
    <link rel="stylesheet" href="assets/css/fullcalendar.css">
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
        <li><a href="#">게시판</a></li>
      </ul>
    </nav>
    <!-- //nav -->

    <main>
      <div class="container">
        <div class="row">
          <div class="main">
            <div class="basic">기본</div>
          	<div class="sale">할인</div>
            <article class="calendar">
              <div id="calendar"></div>
            </article>
            <article class="recommendation">
              <div><h1>추천 공연</h1></div>
              <div class="recommendation-box">
                <ul>
                  <li>
                    <span><img src="assets/img/추천공연/월명.jpg" height="100" alt="공연1" /></span>
                    <strong>月明(월명)</strong>
                    <p style="text-decoration: blink;">10,000원</p>
                    <div class="btn">
                      <a href="ticketing20.jsp">자세히보기</a>
                    </div>
                  </li>
                  <li>
                    <span><img src="assets/img/미술, 전시/녹슨철망을거두고.jpg" height="100" alt="공연1" /></span>
                    <strong>녹슨 철망을 거두고 특별전</strong>
                    <p style="text-decoration: blink;">무료 입장</p>
                    <div class="btn">
                      <a href="ticketing9.jsp">자세히보기</a>
                    </div>
                  </li>
                  <li>
                    <span><img src="assets/img/할인이미지/오아시스.jpg" height="100" alt="공연1" /></span>
                    <strong>오아시스 세탁소 습격사건</strong>
                    <p>30,000원</p>
                    <em style="left: 70%;">21,000원(30%할인)</em>
                    <div class="btn">
                      <a href="ticketing18.jsp">자세히보기</a>
                    </div>
                  </li>
                  <li>
                    <span><img src="assets/img/추천공연/오월.jpg" height="100" alt="공연1" /></span>
                    <strong>오월 그날이 다시 오면</strong>
                    <p style="text-decoration: blink;">무료 입장</p>
                    <div class="btn">
                      <a href="ticketing21.jsp">자세히보기</a>
                    </div>
                  </li>
                </ul>
              </div>
            </article>
          </div>
          <article>
            <div class="Always-exhibition">
              <h1>상시 전시</h1>
              <div class="Always-exhibition-box">
                <ul>
                  <li>
                    <div class="info">
                      <span
                        ><img src="assets/img/추천공연/미피의미술관.jpg" alt="공연1"
                      /></span>
                      <strong>미피의 즐거운 미술관</strong>
                      <p>가격&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : 20,000원<br>
                      전시 기간 : 2020-10-11~2020-11-08</p>
                    </div>
                    <p class="explain">
			한가람디자인미술관에서는 여름 방학을 맞아 네덜란드 최고의 
			디자이너이자 전 세계 어린이들로부터 사랑받는 딕 브루너의 미피가 현대 
			디자이너의 풍부한 상상력으로 만들어낸 독특한 작품과 동화책 속의 모습을 
			재현한 미피의 즐거운 미술관으로 새롭게 찾아갑니다. 단순한 선과 따뜻한 
			색으로 전 세계 언론들이 아이들 감성발달에 가장 좋은 책으로 꼽는 딕 브루너의 
			미피 이야기입니다. 특히 이번 전시에서는 딕 브루너의 우수한 표현력과 완성도
		       높은 초창기 작품 2,000점을 아시아 최초로 만나 볼 수 있는 기회가 마련되었습니다.
			딕 브루너의 원화작품과 함께 다양한 미피, 그의 친구들 모습에 풍부한 상상력과
			즐거움을 담아가는 자리가 될 수 있기를 기대함과 동시에 100인의 아티스트들, 
		       셀러브리티들과 함께 진행하는 프로젝트 (미피 플러스 100)에서도 보다 많은 
			꿈과 희망, 즐거움을 선사할 수 있는 뜻 깊은 전시로 이어갈 수 있기를 희망합니다
                    </p>
                    <div class="btn">
                      <a href="reservation12.jsp">예매하기</a>
                    </div>
                  </li>
                  <li>
                    <div class="info">
                      <span
                        ><img src="assets/img/추천공연/평화를 심다.jpg" alt="공연1"
                      /></span>
                      <strong>평화를 심다 세계를 품다</strong>
                      <p>가격&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  : 무료전시<br>
                      	전시 기간 : 2020-11-29~2020-12-12</p>
                    </div>
                    <p class="explain">
                      사회적 거리두기가 2단계로 격상함에 따라 예술가와 관객의
                      건강을 위하여 공연 일정을 조율중이며, 예매를
                      중단하였습니다. 공연 일정이 확정된 후, 다시 한 번
                      이용하여주시기 바랍니다. 감사합니다. 공연 관람 유의사항
                      *시설 이용 시 마스크를 항상 착용하여주시기 바라며,
                      미착용시 공연장에 입장하실 수 없습니다. *자가 문진표 작성
                      및 체온을 측정하고 있으며, 체온이 섭씨 37.5도 이상으로
                      측정될 시 입장하실 수 없습니다. *문진표 작성 및 체온
                      측정으로 입장권 발권 및 공연장 입장에 약간의 시간이
                      소요되고 있습니다. 여유롭게 오셔서 쾌적한 공연 관람이
                      되시기 바랍니다. *COVID-19 감염증의 확산 방지를 위해
                      사회적 거리두기를 고려하여 객석을 선택하여 주시기
                      바랍니다.
                    </p>
                    <div class="btn">
                      <span class="free">무료입장</span>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
          </article>
        </div>
      </div>
    </main>
    <!-- //main -->

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

    <script src="assets/js/main.js"></script>
    <script src="assets/js/jquery.min_1.12.4.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/tab.js"></script>
    <script>
      document.addEventListener("DOMContentLoaded", function () {
        var calendarEl = document.getElementById("calendar");
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: "dayGridMonth",
          locale: "ko",
          contentHeight: 645,
          headerToolbar: {
            left: "prev,next today",
            center: "title",
            right: "dayGridMonth,timeGridWeek,timeGridDay",
          },
          events: [
            // event data...
              {
                  title: "당신의 이름은 무엇입니까? (30%할인)",
                  color: "#ff8f00",
                  start: "2020-12-12T20:00:00",
                  end: "2020-12-13T21:30:00",
                  url:
                    "ticketing15.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "지금도 가슴 설렌다 (40%할인)",
                  color: "#ff8f00",
                  start: "2020-12-26T19:00:00",
                  end: "2020-12-28T20:00:00",
                  url:
                    "ticketing16.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "라면에 파송송",
                  color: "#ff8f00",
                  start: "2020-12-01T17:00:00",
                  end: "2020-12-03T18:00:00",
                  url:
                    "ticketing17.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "오아시스 세탁소 습격사건 (30%할인)",
                  color: "#ff8f00",
                  start: "2020-11-08T15:00:00",
                  end: "2020-11-12T16:30:00",
                  url:
                    "ticketing18.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "호비쇼 - 인천 (40%할인)",
                  color: "#ff8f00",
                  start: "2020-11-16T13:00:00",
                  end: "2020-11-16T15:00:00",
                  url:
                    "ticketing19.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                // 할인
                {
                  title: "2020 정동극장 (김주원의 사군자 생의 계절)",
                  start: "2020-11-16",
                  end: "2020-11-29",
                  url:
                    "ticketing.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "시나위, 몽",
                  start: "2020-10-27",
                  end: "2020-11-13",
                  url:
                    "ticketing1.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "청춘만발",
                  start: "2020-12-01",
                  end: "2020-12-13",
                  url:
                    "ticketing2.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "아랑가",
                  start: "2020-11-08",
                  end: "2020-11-22",
                  url:
                    "ticketing3.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "양준모의 오페라 데이트",
                  start: "2020-11-15T11:00:00",
                  end: "2020-11-15",
                  url:
                    "ticketing4.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "문자놀이 Ⅳ Playing by Typography",
                  start: "2020-11-28",
                  end: "2020-12-19",
                  url:
                    "ticketing5.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "2020 동화책 속 세계여행",
                  start: "2020-11-05",
                  end: "2020-11-16",
                  url:
                    "ticketing6.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "르네상스 프레스코걸작 재현전",
                  start: "2020-10-31",
                  end: "2020-11-08",
                  url:
                    "ticketing7.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "다인다색전",
                  start: "2020-12-01",
                  end: "2020-12-21",
                  url:
                    "ticketing8.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "녹슨 철망을 거두고 특별전",
                  start: "2020-12-12",
                  end: "2020-12-27",
                  url:
                    "ticketing9.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "적벽",
                  start: "2020-11-21",
                  end: "2020-11-30",
                  url:
                    "ticketing10.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "기술로 수작 부리기 : 메이커 문화 운동의 현재와 미래",
                  start: "2020-11-28",
                  end: "2020-12-10",
                  url:
                    "ticketing11.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title:
                    "종로문화재단 무계원 (종로문화재단×조선뉴스프레스 토크 콘서트: 조선토크)",
                  start: "2020-11-24",
                  end: "2020-11-24",
                  url:
                    "ticketing12.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "윤이상 탄생 100주년 기념 (Remembering Isang Yun)",
                  start: "2020-12-09",
                  end: "2020-12-09",
                  url:
                    "ticketing13.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
                {
                  title: "2020 전통풍물활성화 '어울마당 풍물세상'",
                  start: "2020-12-07",
                  end: "2020-12-17",
                  url:
                    "ticketing14.jsp",
                  resourceEditable: false, // resource not editable for this event
                },
          ],
          eventClick: function (info) {
            info.jsEvent.preventDefault(); // don't let the browser navigate

            if (info.event.url) {
              window.open(info.event.url);
            }
          },
        });
        calendar.render();
      });
    </script>
  </body>
</html>
