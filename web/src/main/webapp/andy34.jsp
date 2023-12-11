<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="tw.Andy.classes.Member"%>
 
<jsp:useBean id="member" class="tw.Andy.classes.Member"></jsp:useBean>
<jsp:setProperty property="account" value="${param.account}" name="member"/>
<jsp:setProperty property="cname" value="${param.cname}" name="member"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		Member:
		<jsp:getProperty property="account" name="member"/>
		<jsp:getProperty property="cname" name="member"/>
		<hr />
		${param.account} : ${param.cname };
		<hr />
		${member.account} : ${member.cname };
		<hr />
		${Math.random() }
	</body>
</html>