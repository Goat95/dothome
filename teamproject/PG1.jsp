<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제페이지 (PG사 : Kakao)</title>
</head>
<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*" %>

<%

Class.forName("com.mysql.jdbc.Driver");

String DB_URL = "jdbc:mysql://localhost:3306/main?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";

String DB_USER = "root";

String DB_PASSWORD= "0000";


Connection conn= null;
Statement stmt = null;
ResultSet rs   = null;

try {

    conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

    stmt = conn.createStatement();



    String query = "SELECT title,venue,name,tel,mail,date,amount,sum FROM pay";
    rs = stmt.executeQuery(query);

%>
<%
    while(rs.next()) {
%>

    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script> 
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script> 
    <script> var IMP = window.IMP; 
    IMP.init('imp02529786'); 
    IMP.request_pay({ 
        pg : 'html5_inicis', 
        pay_method : 'vbank', 
        merchant_uid : 'merchant_' + new Date().getTime(), 
        name : '<%= rs.getString("title")%>', 
        amount : <%= rs.getString("sum")%>, buyer_email : 'iamport@siot.do',
        buyer_name : '<%= rs.getString("name")%>', 
        buyer_tel : '<%= rs.getString("tel")%>', 
        buyer_addr : '<%= rs.getString("date")%>', 
        buyer_postcode : '<%= rs.getString("amount")%>' 
    }, function(rsp) {
        if ( rsp.success ) { 
            var msg = '결제가 완료되었습니다.';
            msg += '\n고유ID : ' + rsp.imp_uid; 
            msg += '\n상점 거래ID : ' + rsp.merchant_uid;
            msg += '\n결제 금액 : ' + rsp.paid_amount + '원'; 
            msg += '\n구매자 성함 : ' + rsp.buyer_name; 
            msg += '\n구매자 번호 : ' + rsp.buyer_tel; 
            msg += '\n예매 일시 : ' + rsp.buyer_addr; 
            msg += '\n티켓 매수 : ' + rsp.buyer_postcode;
            msg += '\n카드 승인번호 : ' + rsp.apply_num;
    }   else { 
            var msg = '결제에 실패하였습니다.'; 
            msg += '에러내용 : ' + rsp.error_msg; } 
            alert(msg); }); 
     </script>

	<%

    	}

	%>
    <%
	rs.close();
    stmt.close();
    conn.close();
	} catch (SQLException e) {
      out.println("err:"+e.toString());
	} 
	%>
<div style="position:absolute;
  height:24px; 
  width:117px;
  margin:-100px 0px 0px -200px;
  top: 50%; 
  left: 57%;
  text-align: left;
  background-color: #f5f5f5;
  border: 1px dotted #000000;
  overflow: auto;
  padding:15px;">
  	<FORM action="main.jsp" method="post" style="    display: flex;"> 
		<INPUT type="submit" value="홈으로 돌아가기 ">
	</FORM>
</div>
<body>
</body>
</html>