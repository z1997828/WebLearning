<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="tw.Andy.classes.*" %>
<%
	int a = 10;
	session.setAttribute("a", a);
	a++;
	int[] b = {1,2,3,4};
	session.setAttribute("b", b);
	b[2] = 33;
	
	Andy_bike b1 = new Andy_bike();
	session.setAttribute("b1", b1);
	b1.upSpeed(); b1.upSpeed(); b1.upSpeed(); b1.upSpeed();
	
	session.setMaxInactiveInterval(3);
%>
<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		a = ${a } <br />
		a = <%= a %> <br />
		<a href="andy63.jsp">Next</a>
	</body>
</html>