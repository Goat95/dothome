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
    <title>공연&전시 - 리스트</title>
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
          <ul>
            <li class="active"><a href="#">무용, 뮤지컬, 클래식</a></li>
            <li><a href="#">미술, 전시</a></li>
            <li><a href="#">행사, 관람, 토크</a></li>
          </ul>
        </div>
        <div class="list-wrap">
          <div class="poster">
            <figure>
              <img class="poster_img" src="assets/img/무용,뮤지컬,클래식/생의 계절.jpg" height="295" alt="공연1" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/무용,뮤지컬,클래식/시나위 몽.jpg" height="295" alt="공연2" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/무용,뮤지컬,클래식/청춘만발.jpg" height="295" alt="공연3" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/무용,뮤지컬,클래식/아랑가.jpg" height="295" alt="공연4" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/무용,뮤지컬,클래식/양준모의 오페라 데이트.jpg" height="295" alt="공연5" />
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
    				System.out.println(sk + "<-- sk list.jsp");
    				System.out.println(sv + "<-- sv list.jsp");
    
    
    				try{
        				String jdbcDriver = "jdbc:mysql://localhost:3306/main?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
        				String dbUser = "root";
        				String dbPass = "0000";
        				conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        				if(sk == null & sv == null){
            				pstmt = conn.prepareStatement("select * from Ticketing1");
			        	}else if(sk != null & sv.equals("")){
            			pstmt = conn.prepareStatement("select * from Ticketing1");
				        }else if(sk != null & sv != null){
            			pstmt = conn.prepareStatement("select * from Ticketing1 where "+sk+"=?");
            			pstmt.setString(1, sv);
				        }
        				rs = pstmt.executeQuery();
        				System.out.println(rs + "<-- list.jsp");
        				while(rs.next()){
   					%>
            <div class="info">
              <h2><%= rs.getString("title")%></h2>
              <span>공연구분 : <em><%= rs.getString("category")%></em></span>
              <br />
              <span>공연기간 : <em><%= rs.getString("period")%></em></span>
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
            <a href="ticketing.jsp">자세히보기</a>
            <a href="ticketing1.jsp">자세히보기</a>
            <a href="ticketing2.jsp">자세히보기</a>
            <a href="ticketing3.jsp">자세히보기</a>
            <a href="ticketing4.jsp">자세히보기</a>
          </div>
        </div>
        <!-- //list-wrap1 -->
        <div class="list-wrap">
          <div class="poster">
            <figure>
              <img class="poster_img" src="assets/img/미술, 전시/문자놀이.jpg" height="295" alt="공연1" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/미술, 전시/동화책 속 세계여행.jpg" height="295" alt="공연2" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/미술, 전시/르네상스 프레스코.jpg" height="295" alt="공연3" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/미술, 전시/다인다색.jpg" height="295" alt="공연4" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/미술, 전시/녹슨철망을거두고.jpg" height="295" alt="공연5" />
            </figure>
          </div>
          <div class="info_wrap">
          		   <%
					request.setCharacterEncoding("utf-8");
				    
					Connection conn1 = null;
    				PreparedStatement pstmt1 = null;
    				ResultSet rs1 = null;

    				Class.forName("com.mysql.jdbc.Driver");
    				String sk1 = request.getParameter("sk");
    				String sv1 = request.getParameter("sv");
    				System.out.println(sk1 + "<-- sk list.jsp");
    				System.out.println(sv1 + "<-- sv list.jsp");
    
    
    				try{
        				String jdbcDriver = "jdbc:mysql://localhost:3306/main?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
        				String dbUser = "root";
        				String dbPass = "0000";
        				conn1 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        				if(sk1 == null & sv1 == null){
            				pstmt1 = conn1.prepareStatement("select * from Ticketing2");
			        	}else if(sk1 != null & sv1.equals("")){
            			pstmt1 = conn1.prepareStatement("select * from Ticketing2");
				        }else if(sk1 != null & sv1 != null){
            			pstmt1 = conn1.prepareStatement("select * from Ticketing2 where "+sk1+"=?");
            			pstmt1.setString(1, sv1);
				        }
        				rs1 = pstmt1.executeQuery();
        				System.out.println(rs1 + "<-- list.jsp");
        				while(rs1.next()){
   					%>
            <div class="info">
              <h2><%= rs1.getString("title")%></h2>
              <span>공연구분 : <em><%= rs1.getString("category")%></em></span>
              <br />
              <span>공연기간 : <em><%= rs1.getString("period")%></em></span>
            
            </div>
                    <% 
        			}    
    
    				}catch(SQLException ex) {
        				out.println(ex.getMessage());
        				ex.printStackTrace();
    
    				} finally {
        
        			if (rs1 != null) try { rs1.close(); } catch(SQLException ex) {}
        			if (pstmt1 != null) try { pstmt1.close(); } catch(SQLException ex) {}
        
        			
        			if (conn1 != null) try { conn1.close(); } catch(SQLException ex) {}
    				}
   					%>
   				</div>
          <div class="info_btn">
            <a href="ticketing5.jsp">자세히보기</a>
            <a href="ticketing6.jsp">자세히보기</a>
            <a href="ticketing7.jsp">자세히보기</a>
            <a href="ticketing8.jsp">자세히보기</a>
            <a href="ticketing9.jsp">자세히보기</a>
          </div>
        </div>
        <!-- //list-wrap2 -->
        <div class="list-wrap">
          <div class="poster">
            <figure>
              <img class="poster_img" src="assets/img/행사, 관람, 토크/적벽.png" height="295" alt="공연1" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/행사, 관람, 토크/기술로 수작 부리기.jpg" height="295" alt="공연2" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/행사, 관람, 토크/무계원.png" height="295" alt="공연3" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/행사, 관람, 토크/윤이상 탄생100주년.jpg" height="295" alt="공연4" />
            </figure>
            <figure>
              <img class="poster_img" src="assets/img/행사, 관람, 토크/어울마당 풍물세상.jpg" height="295" alt="공연5" />
            </figure>
          </div>
          <div class="info_wrap">
          		   <%
					request.setCharacterEncoding("utf-8");
				    
					Connection conn2 = null;
    				PreparedStatement pstmt2 = null;
    				ResultSet rs2 = null;

    				Class.forName("com.mysql.jdbc.Driver");
    				String sk2 = request.getParameter("sk");
    				String sv2 = request.getParameter("sv");
    				System.out.println(sk2 + "<-- sk list.jsp");
    				System.out.println(sv2 + "<-- sv list.jsp");
    
    
    				try{
        				String jdbcDriver = "jdbc:mysql://localhost:3306/main?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
        				String dbUser = "root";
        				String dbPass = "0000";
        				conn2 = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
        				if(sk2 == null & sv2 == null){
            				pstmt2 = conn2.prepareStatement("select * from Ticketing3");
			        	}else if(sk2 != null & sv2.equals("")){
            			pstmt2 = conn1.prepareStatement("select * from Ticketing3");
				        }else if(sk2 != null & sv2 != null){
            			pstmt2 = conn1.prepareStatement("select * from Ticketing3 where "+sk2+"=?");
            			pstmt2.setString(1, sv2);
				        }
        				rs2 = pstmt2.executeQuery();
        				System.out.println(rs2 + "<-- list.jsp");
        				while(rs2.next()){
   					%>
            <div class="info">
              <h2><%= rs2.getString("title")%></h2>
              <span>공연구분 : <em><%= rs2.getString("category")%></em></span>
              <br />
              <span>공연기간 : <em><%= rs2.getString("period")%></em></span>
            
            </div>
                    <% 
        			}    
    
    				}catch(SQLException ex) {
        				out.println(ex.getMessage());
        				ex.printStackTrace();
    
    				} finally {
        
        			if (rs2 != null) try { rs2.close(); } catch(SQLException ex) {}
        			if (pstmt2 != null) try { pstmt2.close(); } catch(SQLException ex) {}
        
        			
        			if (conn2 != null) try { conn2.close(); } catch(SQLException ex) {}
    				}
   					%>
   				</div>
          <div class="info_btn">
            <a href="ticketing10.jsp">자세히보기</a>
            <a href="ticketing11.jsp">자세히보기</a>
            <a href="ticketing12.jsp">자세히보기</a>
            <a href="ticketing13.jsp">자세히보기</a>
            <a href="ticketing14.jsp">자세히보기</a>
          </div>
        </div>
        <!-- //list-wrap3 -->
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