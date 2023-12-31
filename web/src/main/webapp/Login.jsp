<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="tw.Andy.classes.*" %>
<!DOCTYPE html>

<html>
	<c:if test="${!empty param.account}" ></c:if>
	<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/andy"
		user="root"
		password="root"
		/>	
	<sql:query var="rs">
		SELECT * FROM member WHERE account = ?
		<sql:param>${param.account}</sql:param>
	</sql:query>
	<c:choose>
				<c:when test="${rs.rowCount > 0 }">
					<c:set var="passwd" value="${rs.rows[0].passwd }" />
					<c:choose>
						<c:when test="${BCrypt.checkpw(param.passwd, passwd) }">
							<jsp:useBean id="member0" class="tw.Andy.classes.Member"></jsp:useBean>
							<c:set target="${member0 }" property="id">${rs.rows[0].id }</c:set>
							<c:set target="${member0 }" property="account">${rs.rows[0].account }</c:set>
							<c:set target="${member0 }" property="cname">${rs.rows[0].cname }</c:set>
							<c:set var="member" value="${member0 }" scope="session" />
							
							<c:redirect url="main.jsp"></c:redirect>
						</c:when>
						<c:otherwise>
							<c:set var="mesg" value="Login Failure" />
							<c:remove var="member"/>
						</c:otherwise>
					</c:choose>				
				</c:when>
				<c:otherwise>
					<c:set var="mesg" value="Login Failure" />
					<c:remove var="member"/>
				</c:otherwise>
			</c:choose>
		
		
	
	<head>
		<meta charset="UTF-8">
		<title>Login System</title>
	</head>
	<body>
		<h1>Login</h1>
		<form action="">
			Account:<input name="account"> <br>
			Password:<input type="password" name="passwd"> <br>
			<input type="submit" value="Login">
		</form>
	</body>
</html>