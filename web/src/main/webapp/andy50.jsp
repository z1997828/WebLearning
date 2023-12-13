<%@ page import="tw.Andy.classes.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
	
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
	<c:catch>
		<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/andy"
		user="root"
		password="root"
		/>	
		
	</c:catch>
		
	</body>
</html>