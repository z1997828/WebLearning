<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="tw.Andy.classes.*" %>
<% 
	
//	Integer a = (Integer)session.getAttribute("a");
	int[] b = (int[])session.getAttribute("b");
	if(b == null){
		response.sendRedirect("andy62.jsp");
	}
	int bb = b[2];
	Andy_bike b1 = (Andy_bike)session.getAttribute("b1");
%>
<!DOCTYPE html>

<html>
	<body>
	a = ${a }<br/>
	bb = <%= bb %> <br/>
	b1 = ${b1.getSpeed() }
	<a href="andy64.jsp">6464</a>
	</body>
</html>