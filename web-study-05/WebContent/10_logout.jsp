<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션을 이용한 로그인 처리 : 로그아웃</title>
</head>
<body>
<%
session.invalidate();
%>
<script>
	alert("로그 아웃 되었습니다!");
	location.href="10_loginForm.jsp";
</script>
</body>
</html>