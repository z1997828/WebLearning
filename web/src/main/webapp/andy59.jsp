<%@page import="java.util.SortedMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="tw.Andy.classes.AndyUtils"%>

<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost/andy"
	user="root"
	password="root"
	/> 	
<sql:query var="rs">
	SELECT * FROM food
</sql:query>

<c:forEach items="${rs.rows }" var="food" varStatus="status">
<%
	SortedMap obj = (SortedMap)pageContext.getAttribute("food");

%>
</c:forEach>
