<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="tw.Andy.classes.*" %>
<%
	Member member = (Member)session.getAttribute("member");
	if (member == null){
		response.sendRedirect("Login.jsp");
		
		return;
		}else{
			
		}
	
%>
<!DOCTYPE html>
<html>
<sql:setDataSource
		driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost/andy"
		user="root"
		password="root"
		/> 
	<c:if test="${!empty param.delid }">
		<sql:update>
			DELETE FROM member WHERE id = ?
			<sql:param>${param.delid }</sql:param>
		</sql:update>
	</c:if>	
	
	<sql:query var="rs">
		SELECT * FROM member
	</sql:query>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
		
	</head>
	<body>
		<h1>MAIN</h1>
		<hr />
		<a href="addNew.jsp">AddNew</a>
		<a href="logout.jsp">Logout</a>
		<hr />
		<h1>Welcone ! <%= member.getCname() %></h1>
		<hr />
	<table border="1" width="100%">
		<tr>
			<th>id</th>
			<th>Account</th>
			<th>Name</th>
			<th>Del</th>
			<th>Edit</th>
		</tr>
			<script>
			function delAlert(cname){
				var isDel = confirm("Delete #" + cname + "# ?");
				return isDel;
			}
			</script>
			<c:forEach items="${rs.rows }" var="member">
			<tr>
				<td>${member.id }</td>
				<td>${member.account }</td>
				<td>${member.cname }</td>
				<td><a href="?delid=${member.id }" onclick="return delAlert('${member.cname }');">Del</a></td>
				<td><a href="edit.jsp?editid=${member.id }">Edit</a></td>
			</tr>
		
		</c:forEach>
		</table>
	</body>
</html>