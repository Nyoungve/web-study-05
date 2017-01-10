<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 인정받은 회원에게 제공되는 JSP</title>
</head>
<body>
<%
if(session.getAttribute("loginUser")==null){
	response.sendRedirect("10_loginForm.jsp");
	System.out.print("로그인실패!");
}else{
%>
<%=session.getAttribute("loginUser") %>님 안녕하세요!<br>
홈페이지 방문 감사!<br>
즐거운 시간 보내333<br>
<form method="post" action="10_logout.jsp">
	<input type=submit value="로그아웃">
</form>
<%
}
%>
</body>
</html>