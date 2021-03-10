<%@ page contentType="text/html;charset=utf-8"

	import="java.sql.*" %>

<%

	request.setCharacterEncoding("utf-8");

	String title = request.getParameter("title");
	String venue = request.getParameter("venue");
	String name = request.getParameter("name");
	String tel = request.getParameter("tel");
	String mail = request.getParameter("mail");
	String date = request.getParameter("date");
	String amount = request.getParameter("amount");
	String sum = request.getParameter("sum");

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		
		String DB_URL = "jdbc:mysql://localhost:3306/main?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false";
	
		Connection con = DriverManager.getConnection(DB_URL, "root", "0000");

		String sql = "INSERT INTO pay(title,venue,name,tel,mail,date,amount,sum) VALUES(?,?,?,?,?,?,?,?)";

		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,title);
		pstmt.setString(2,venue);
		pstmt.setString(3,name);
		pstmt.setString(4,tel);
		pstmt.setString(5,mail);
		pstmt.setString(6,date);
		pstmt.setString(7,amount);
		pstmt.setString(8,sum);
		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}
	catch(ClassNotFoundException e)
	{
		out.println(e);
	}
	catch(SQLException e)
	{
		out.println(e);
	}
	response.sendRedirect("PG1.jsp");
%>