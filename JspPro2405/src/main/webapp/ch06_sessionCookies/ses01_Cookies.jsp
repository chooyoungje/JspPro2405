<%@page import="java.net.URLEncoder"%>
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
	String cookieName = "id";
	Cookie cookie = new Cookie(cookieName,"hongkd");
	// "id" 라는 이름으로 hongkd라는 쿠키를 생성
	
	cookie.setMaxAge(60*2);  // 쿠키를 2분동안 유지시켜라
	
	
	// cookie.setValue("kimid")// 이름을 kimid로 바꾸겠다
	
	
	cookie.setValue(URLEncoder.encode("홍아이디","utf-8"));
	
	
	
	response.addCookie(cookie);  // 쿠키는 클라이언트에 있기 때문에 response에 추가하기
	
%>
<h2>쿠키를 생성하는 예제</h2>
<%= cookieName%> 쿠키가 생성되었습니다
<input type="button" value="쿠키의 내용확인" '
	onClick="javascript:window.location='ses02_useCookie.jsp'"/>

</body>
</html>