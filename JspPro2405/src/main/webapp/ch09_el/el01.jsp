<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




<%
// https://atoz-develop.tistory.com/entry/JSP-EL-%ED%91%9C%ED%98%84%EC%8B%9D-%EB%AC%B8%EB%B2%95%EA%B3%BC-%EC%82%AC%EC%9A%A9-%EB%B0%A9%EB%B2%95
	session.setAttribute("test", "session에 test 속성 추가");
	session.setAttribute("today", new Date());
	// pageContext, request, session, application
	// (key, value) 구조
	
%>

<form  action="e02.jsp" method="post">
	이름 : <input type ="text" name="name" value="홍길동">
	<input type="submit" value="전송">

</form>
</body>
</html>