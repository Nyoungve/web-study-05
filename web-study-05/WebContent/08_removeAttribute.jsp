<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세션에 저장된 특정 객체 삭제하기& 모든 객체 삭제하기</title>
</head>
<body>
<%
session.setAttribute("s_name1", "저는 세션에 저장된 첫 번째 값이에요. ^-^");
session.setAttribute("s_name2", "저는 세션에 저장된 두 번째 값이에요. ^-^");
session.setAttribute("s_name3", "저는 세션에 저장된 세 번째 값이에요. ^-^");

out.print("<h3> >>세션 값을 삭제 하기 전 << </h3>");

Enumeration names = session.getAttributeNames();
while(names.hasMoreElements()){
	String name = names.nextElement().toString();
	String value=session.getAttribute(name).toString();
	out.println(name+" : "+value+"<br>");
}

//이름을 지정하여 세션에 저장된 객체를 제거한다. 
 session.removeAttribute("s_name2");
 out.print("<h3> >>세션 값을 부분 삭제 한 후 << </h3>");

 names = session.getAttributeNames();
 while(names.hasMoreElements()){
 	String name = names.nextElement().toString();
 	String value=session.getAttribute(name).toString();
 	out.println(name+" : "+value+"<br>");
 }

//설정된 세션의 값들을 모두 사라지도록 만든다. 
session.invalidate();

out.print("<h3> >>세션 값을 모두 삭제 한 후  << </h3>");
out.print("<b> >>Q: 과연 세션아이디가 유효할까요? << </b>");
if(request.isRequestedSessionIdValid()==true){
	out.print("A: 세션아이디가 유효합니다.<hr>");
}else{
	out.print("A: 세션아이디가 유효하지 않습니다..<hr>");
}

%>
</body>
</html>