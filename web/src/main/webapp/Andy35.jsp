<%@ page import="tw.Andy.classes.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
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
		<h1 id="bigtitle">計算機</h1>
		<hr>
		<form>
			<input name='x' value="${param.x} ">
			<select name="op">
				<option value="0" ${param.op == "0" ? "selected" : ""}>+</option>
				<option value="1" ${param.op == "1" ? "selected" : ""}>-</option>
				<option value="2" ${param.op == "2" ? "selected" : ""}>x</option>
				<option value="3" ${param.op == "3" ? "selected" : ""}>/</option>
			</select>
			<input name='y' value="${param.y }">	
			<input type='submit' value="="> 
			<span>${AndyUtils.calc(param.x , param.y,param.op)}</span>
		</form>
	</body>
</html>