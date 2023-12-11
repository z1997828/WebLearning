<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% 
 	int lottery1 = (int)(Math.random()*49+1);
	int lottery2 = (int)(Math.random()*49+1);
	request.setAttribute("lottery1", lottery1);
	request.setAttribute("lottery2", lottery2);
 %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>Hello! Andy</h1>
		<hr>
		<jsp:include page="andy29.jsp">
			<jsp:param value="10" name="x"/>
			<jsp:param value="3" name="y" />
			<jsp:param value="3" name="z" />
		</jsp:include>
	</body>
</html>