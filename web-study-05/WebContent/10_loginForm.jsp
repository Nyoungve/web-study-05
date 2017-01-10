<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션을 이용한 로그인 처리 : 로그인 폼</title>
</head>
<body>
<form method="post" action="10_testLogin.jsp">
	<label for="userid"> 아이디 : </label>
	<input type="text" name="id" id="userid"><br>
	
	<label for="userpwd"> 암 &nbsp; 호</label>
	<input type="password" name="pwd" id="userpwd"><br>
	
	<input type="submit" value="로그인">
</form>
</body>
</html>
