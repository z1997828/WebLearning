<%@ page import="tw.Andy.classes.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String x = request.getParameter("x");
 	String y = request.getParameter("y");
 	String op = request.getParameter("op");
 	String result = "";
 
 	try{
 		
 		int intX = Integer.parseInt(x);
 		int intY = Integer.parseInt(y);
 		switch(op){
 		case "0": result += (intX + intY); break;
 		case "1": result += (intX - intY); break;
 		case "2": result += (intX * intY); break;
 		case "3": result += (intX / intY) +"..."+ (intX % intY); break;
 		}
 	}catch(Exception e){
 		
 	}
 %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>雞算機</title>
		<style>
			#bigtitle{
				text-align: center;
				color: brown;
			}
			form{
				text-align: center;
				border: solid 2px black;
				padding: 5px;
			}
		</style>
	</head>
	<body>
		<h1 id="bigtitle">計算機<hr></h1>>
		<form>
			<input name='x' value=<%= x %>>>
			<select name="op">
				<option value="0" <%= op.equals("0")?"selected":"" %>>>+</option>
				<option value="1" <%= op.equals("0")?"selected":"" %>>-</option>
				<option value="2" <%= op.equals("0")?"selected":"" %>>x</option>
				<option value="3" <%= op.equals("0")?"selected":"" %>>/</option>
			</select>
			<input name='y' value=<%= y %>>>		
			<input type='submit' value=提交> />
			<span><%= result %></span>
		</form>
	</body>
</html>