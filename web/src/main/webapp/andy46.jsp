<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/andy"
		user="root"
		password="root"
		/>
		<sql:update>
		INSERT INTO cust (cname,tel,birthday) VALUES ('CCC','0912345','1997-08-28')
		</sql:update>
		
	</body>
</html>