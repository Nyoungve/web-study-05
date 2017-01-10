<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션에 설정된 모든 값 얻어오기</title>
</head>
<body>
<h3>세션에 설정된 모든 값 얻어오기</h3>
<%
	session.setAttribute("id", "sidud");
	session.setAttribute("passwd", "test1234");
	session.setAttribute("age", 20);	

	Enumeration names = session.getAttributeNames();
	while(names.hasMoreElements()){
		String name = names.nextElement().toString();
		String value=session.getAttribute(name).toString();
		out.println(name+" : "+value+"<br>");
	}
%>
</body>
</html>