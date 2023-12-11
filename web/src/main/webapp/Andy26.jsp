<%@page import="java.sql.*"%>
<%@page import="java.util.* "%>
<%@page import="tw.Andy.classes.* "%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
String mesg = "";

request.setCharacterEncoding("UTF-8");
String account = request.getParameter("account");	
String passwd = request.getParameter("passwd");

if (request.getMethod().equals("POST")){
	if (account != null && passwd != null){
		MemberDB memberDB = new MemberDB();
		if (memberDB.Login(account, passwd)){
			response.sendRedirect("main.jsp");
		}else{
			mesg = "Login Failure";
		}
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
	<h1><%= mesg %></h1>
	<form method="post">
		<div>
			Account :<input name="account"> <br> Password :<input
				type="password" name="passwd"> <br> <input
				type="submit" value="提交"> <br>
		</div>
	</form>
</body>
</html>