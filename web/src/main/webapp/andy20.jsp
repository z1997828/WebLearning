<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="Andy21.jsp"%>
<%
String name = request.getParameter("name");
if (name == null)
	name = "World";
%>

<%
	String start = request.getParameter("start");
	String rows = request.getParameter("rows");
	String cols = request.getParameter("cols");
	
	final int START = start == null ? 2 : Integer.parseInt(start);
	final int ROWS = rows == null ? 2 : Integer.parseInt(rows);
	final int COLS = cols == null ? 4 : Integer.parseInt(cols);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>SHADOW Company</h1>
	<hr>
	<div>
		Welcome to,<%=name%>
		<hr>
		Lottery:
		<%
		out.print((int) (Math.random() * 49 + 1));
		%>
	</div>
	<hr>
	<%
	HashSet<Integer> set = new HashSet<>();
	while (set.size() < 6) {
		set.add((int) (Math.random() * 49 + 1));
	}
	out.print(set);
	%>
	<hr>
	<script type="text/javascript">
		funciton checkForm(){
			return true;
		}
	</script>
	<form onsubmit="return checkForm();">
		START:<input type="number" name="start">
		<input type="number" name="rows">
		x
		<input type="number" name="colw">
		<input type="submit" name="change">
	</form>
	<table border="1" width="50%">
		<%
		for (int k = 0; k < ROWS; k++){
			out.print("<tr>");
			
			for (int j = START; j<START+COLS; j++){
				int newj = j + k*COLS;
				
				out.print("<td>");
				for (int i=1; i<=9; i++){
					int r = newj * i;
					out.print(String.format("%d x %d = %d<br />",newj, i, r));
				}
				out.print("</td>");
			
			}
			
			out.print("</tr>");
		}
		%>

	</table>
</body>
</html>