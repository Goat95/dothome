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
    <title>공연&전시 - 예매하기</title>
    <link rel="stylesheet" href="assets/css/reset.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <script
      src="https://kit.fontawesome.com/20210039bb.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body onload="init();">
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

    <div class="container">
      <div class="row">
        <section class="person-wrap">
          <div class="person-info">
            <h2>티켓예매</h2>
            <form name="form" action="pay1.jsp" method="post">
              <div>
                <label for="name">상품명 : </label>
                <INPUT type="text" readonly value="다인다색전" name="title">
              </div>
              <div>
                <label for="name">장소 : </label>
                <INPUT type="text" readonly value="예술의전당" name="venue">
              </div>
              <div>
                <label for="name">이름 : </label>
                <input type="text" name="name" id="name" />
              </div>
              <div>
                <label for="contact">연락처 : </label>
                <input type="text" name="tel" id="tel" />
              </div>
              <div>
                <label for="mail">E-mail : </label>
                <input type="text" name="mail" id="mail" />
              </div>
              <div>
                <label for="date">날짜 : </label>
                <select name="date" id="date">
                  <option value="2020-12-1 화 오전 9시">2020-12-1 화 오전 9시</option>
                  <option value="2020-12-2 수 오전 9시">2020-12-2 수 오전 9시</option>
                  <option value="2020-12-3 목 오전 9시">2020-12-3 목 오전 9시</option>
                  <option value="2020-12-4 금 오전 9시">2020-12-4 금 오전 9시</option>
                  <option value="2020-12-5 토 오전 10시">2020-12-5 토 오전 10시</option>
                  <option value="2020-12-6 일 오전 10시">2020-12-6 일 오전 10시</option>
                  <option value="2020-12-7 월 오전 9시">2020-12-7 월 오전 9시</option>
                  <option value="2020-12-8 화 오전 9시">2020-12-8 화 오전 9시</option>
                  <option value="2020-12-9 수 오전 9시">2020-12-9 수 오전 9시</option>
                  <option value="2020-12-10 목 오전 9시">2020-12-10 목 오전 9시</option>
                  <option value="2020-12-11 금 오전 9시">2020-12-11 금 오전 9시</option>
                  <option value="2020-12-12 토 오전 10시">2020-12-12 토 오전 10시</option>
                  <option value="2020-12-13 일 오전 10시">2020-12-13 일 오전 10시</option>
                  <option value="2020-12-14 월 오전 9시">2020-12-14 월 오전 9시</option>
                  <option value="2020-12-15 화 오전 9시">2020-12-15 화 오전 9시</option>
                  <option value="2020-12-16 수 오전 9시">2020-12-16 수 오전 9시</option>
                  <option value="2020-12-17 목 오전 9시">2020-12-17 목 오전 9시</option>
                  <option value="2020-12-18 금 오전 9시">2020-12-18 금 오전 9시</option>
                  <option value="2020-12-19 토 오전 10시">2020-12-19 토 오전 10시</option>
                  <option value="2020-12-20 일 오전 10시">2020-12-20 일 오전 10시</option>
                  <option value="2020-12-21 월 오전 9시">2020-12-21 월 오전 9시</option>
                </select>
              </div>
              <div class="ticket-amount">
                <label for="">티켓 : </label>
                <select name="amount" onchange="change();" id="">
                  <option value="1매">1매</option>
                  <option value="2매">2매</option>
                  <option value="3매">3매</option>
                  <option value="4매">4매</option>
                  <option value="5매">5매</option>
                </select>
                <input type="hidden" name="sell_price" value="15000" />
              </div>
                <div>
                <label for="">금액 : </label>
                <input type="text" name="sum" size="11" readonly />원
              </div>
              <div class="payment-btn">
                <button type="submit">결제하기</button>
              </div>
            </form>
          </div>
        </section>
        <!-- //person-info -->
        
        <section>
          <div class="notice">
            <b>취소/변경/유의사항</b>
            <div class="notice-head">
              <span class="red">01.</span>
              예매취소 및 환불방법
            </div>
            <div class="notice-body">
              <ul>
                <li>
                  취소방법 : <b class="blue">02-0000-0000</b>로 취소 신청해
                  주셔야 합니다.
                </li>
                <li>특정 공연의 경우 취소 수수료가 부과될 수 있습니다.</li>
              </ul>
            </div>
            <div class="notice-head">
              <span class="red">02.</span>
              유의사항
            </div>
            <div class="notice-body">
              <ul>
                <li>환불 금액 입금은 영업일 기준 3~5일 정도 소요됩니다.</li>
                <li>
                  부분 취소·좌석변경은 불가능하며, 전체 취소 후 다시
                  예매해야합니다.
                </li>
                <li>
                  관람권(티켓)은 유가증권이므로 분실 및 훼손의 경우, 재발행 및
                  취소/환불/변경 불가합니다.
                </li>
              </ul>
            </div>
            <div class="notice-head">
              <span class="red">03.</span>
              예매 취소 수수료 안내
            </div>
            <div class="notice-body">
              <table class="table">
                <thead>
                  <tr>
                    <th>구 분</th>
                    <th>환불 수수료</th>
                    <th>비 고</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th>관람일 3일 전까지</th>
                    <td>수수료 없음</td>
                    <td>
                      예) 6월 24일 공연일 경우 6월 20일(18:00시)까지 취소시 전액
                      환급
                    </td>
                  </tr>
                  <tr>
                    <th>관람일 3일 ~ 1일 전까지</th>
                    <td>50% 공제 후 환급</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>공연당일</th>
                    <td>취소/변경/환불 불가</td>
                    <td></td>
                  </tr>
                  <tr>
                    <th>마감시간</th>
                    <td>취소/변경/환불 마감시간</td>
                    <td>
                      공연 전날 (18:00) 까지
                      <br />
                      전화 및 방문은 근무시간 (09:00 ~ 18:00)이내 환불 가능
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </section>
        <!-- //notcie -->
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
    <script>
      var sell_price;
      var amount;

      function init() {
        sell_price = document.form.sell_price.value;
        amount = document.form.amount.value;
        document.form.sum.value = sell_price;
        change();
      }

      // function add() {
      //   hm = document.form.amount;
      //   sum = document.form.sum;
      //   hm.value++;

      //   sum.value = parseInt(hm.value) * sell_price;
      // }

      // function del() {
      //   hm = document.form.amount;
      //   sum = document.form.sum;
      //   if (hm.value > 1) {
      //     hm.value--;
      //     sum.value = parseInt(hm.value) * sell_price;
      //   }
      // }

      function change() {
        hm = document.form.amount;
        sum = document.form.sum;

        if (hm.value < 0) {
          hm.value = 0;
        }
        sum.value = parseInt(hm.value) * sell_price;
      }
    </script>
  </body>
</html>
