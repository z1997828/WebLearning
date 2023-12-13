<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="tw.Andy.classes.*" %>
<!DOCTYPE html>

<html>
	
	<c:if test="${!empty param.account }">
		<c:if test="${pageContext.request.method == 'GET' }">
			<c:redirect url="main.jsp"></c:redirect>
		</c:if>
		
		<sql:setDataSource
			driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost/andy"
			user="root"
			password="root"
			/> 	
		
		<sql:update>
			INSERT INTO member (account,cname,passwd) VALUES (?,?,?)
			<sql:param>${param.account }</sql:param>
			<sql:param>${param.cname }</sql:param>
			<sql:param>${BCrypt.hashpw(param.passwd, BCrypt.gensalt()) }</sql:param>
		</sql:update>
		<c:redirect url="main.jsp"></c:redirect>
	</c:if>

	<head>
		<meta charset="UTF-8">
		<title>addNew System</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		<script>
			function checkAccount() {
				$("#mesg").load("checkAccount.jsp?account =" + $("#account").val());
			}
		</script>
	</head>
	<body>
		<h1>addNew</h1>
		<form method="post">
			Account:<input name="account" onblur="checkAccount()"><br> <span id="mesg"></span>
			Password:<input type="password" name="passwd"><br>
			Name:<input name="cname"> <br />
			<input type="submit" value="add">
		</form>
		
	</body>
</html>