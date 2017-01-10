<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션에 저장된 값 얻어오기</title>
</head>
<body>
<h3>세션 값 얻어오기</h3>
<%
	String id =(String) session.getAttribute("id");
	String passwd = (String) session.getAttribute("passwd");
	Integer age = (Integer) session.getAttribute("age");
%>
id:<%=id %><br>
passwd:<%=passwd %><br>
age:<%=age %><br>
</body>
</html>