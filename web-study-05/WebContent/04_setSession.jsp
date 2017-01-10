<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Session에 값 설정하기</title>
</head>
<body>
<%
	session.setAttribute("id", "sidud");
	session.setAttribute("passwd", "test1234");
	session.setAttribute("age", 20);
%>
<h3>세션 설정</h3>
</body>
</html>