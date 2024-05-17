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

	String id = "choo";
	String pw = "1234";
	session.setAttribute("id", id);
	session.setAttribute("pw", pw);
	
%>

세션에 id와 pw 속성을 설정
<input type="button" value="세션에 설정된 속성확인" onClick="ses08_viewSession.jsp">

</body>
</html>