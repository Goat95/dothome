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
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta
      name="viewport"
      content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"
    />
    <title>공연&전시 - 티켓할인</title>
    <link rel="stylesheet" href="assets/css/reset.css" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <link rel="stylesheet" href="assets/css/font-awesome.css" />
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
    <div class="container">
      <div class="row">
      <div class="poster-title">
          <ul style="width: 370px;">
            <li><a>할인중인 공연</a></li>
          </ul>
        </div>
        <div class="discount-wrap" style="margin-top: 50px;">
          <div class="poster">
            <figure>
              <img class="poster_img" src="assets/img/할인이미지/당신의 이름은.png" height="295" alt="공연1" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/할인이미지/지금도 가슴.gif" height="295" alt="공연2" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/할인이미지/라면에 파송송.jpg" height="295" alt="공연3" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/할인이미지/오아시스.jpg" height="295" alt="공연4" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/할인이미지/호비쇼.jpg" height="295" alt="공연5" />
            </figure>
          </div>
          <div class="info_wrap">
                    <%
					request.setCharacterEncoding("utf-8");
				    
					Connection conn = null;
    				PreparedStatement pstmt = null;
    				ResultSet rs = null;

    				Class.forName("com.mysql.jdbc.Driver");
    				String sk = request.getParameter("sk");
    				String sv = request.getParameter("sv");
    				System.out.println(sk + "<-- sk discount.jsp");
    				System.out.println(sv + "<-- sv discount.jsp");
    
    
    				try{
        				String jdbcDriver = "jdbc:mysql://localhost:3306/main?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
        				String dbUser = "root";
        				String dbPass = "0000";
        				conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        				if(sk == null & sv == null){
            				pstmt = conn.prepareStatement("select * from discount");
			        	}else if(sk != null & sv.equals("")){
            			pstmt = conn.prepareStatement("select * from discount");
				        }else if(sk != null & sv != null){
            			pstmt = conn.prepareStatement("select * from discount where "+sk+"=?");
            			pstmt.setString(1, sv);
				        }
        				rs = pstmt.executeQuery();
        				System.out.println(rs + "<-- discount.jsp");
        				while(rs.next()){
   					%>
            <div class="info">
              <h2><%= rs.getString("title")%></h2>
              <span>공연구분 : <em><%= rs.getString("category")%></em></span>
              <br />
              <span>공연기간 : <em><%= rs.getString("period")%></em></span>
              <br />
              <span
                >가격 : <em class="price" style="left:40%"><%= rs.getString("charge")%></em>
                <strong class="discount"><%= rs.getString("discount")%></strong></span
              >
            </div>
                    <% 
        			}    
    
    				}catch(SQLException ex) {
        				out.println(ex.getMessage());
        				ex.printStackTrace();
    
    				} finally {
        
        			if (rs != null) try { rs.close(); } catch(SQLException ex) {}
        			if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
        
        			
        			if (conn != null) try { conn.close(); } catch(SQLException ex) {}
    				}
   					%>
          </div>
          <div class="info_btn">
            <a href="ticketing15.jsp">자세히보기</a>
            <a href="ticketing16.jsp">자세히보기</a>
            <a href="ticketing17.jsp">자세히보기</a>
            <a href="ticketing18.jsp">자세히보기</a>
            <a href="ticketing19.jsp">자세히보기</a>
          </div>
        </div>
        <!-- //list-wrap1 -->
      </div>
    </div>
    <div class="list-btn">
      <div class="list-page pull-left">
        <ul class="pagination pagination-sm en">
          <li class="disabled">
            <a href="">
              <i class="fa fa-angle-left"></i>
            </a>
          </li>
          <li class="active">
            <a href="">1</a>
          </li>
          <li>
            <a href="">2</a>
          </li>
          <li>
            <a href="">3</a>
          </li>
          <li>
            <a href="">4</a>
          </li>
          <li>
            <a href="">5</a>
          </li>
          <li class="disabled">
            <a href="">
              <i class="fa fa-angle-right"></i>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <!-- //poster -->
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
    <script src="assets/js/jquery.min_1.12.4.js"></script>
    <script src="assets/js/swiper.min.js"></script>
    <script src="assets/js/tab.js"></script>
  </body>
</html>