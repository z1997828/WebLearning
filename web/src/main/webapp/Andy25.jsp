<%@page import="java.sql.*"%>
<%@page import="java.util.* "%>
<%@page import="tw.Andy.classes.* "%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String mesg = "";
String account = request.getParameter("account");
String passwd = request.getParameter("passwd");

if(account != null && passwd != null){
	String SQL_LOGIN = "SELECT * FROM member WHERE account = ?";
	String URL = "jdbc:mysql://127.0.0.1:3306/andy";
	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop = new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn = DriverManager.getConnection(URL, prop);
	
	
	PreparedStatement pstmt = conn.prepareStatement(SQL_LOGIN);
	pstmt.setString(1, account);
	ResultSet rset = pstmt.executeQuery();
	if (rset.next()) {
		String hashPasswd = rset.getString("password");
		if (BCrypt.checkpw(passwd, hashPasswd)) {
			response.sendRedirect("main.jsp");
		} else {
			mesg = "密碼錯誤，失敗";
		}
	} else {
		mesg = "帳號錯誤，失敗";
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login</h1>
	<form>
		<div>
			Account :<input name="account"> <br> Password :<input
				type="password" name="passwd"> <br> <input
				type="submit" value="提交"> <br>
		</div>
	</form>
</body>
</html>