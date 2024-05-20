<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
                           <!-- 에러 페이지 지정하기  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	int a =1;
	int b=0;
%>
<p>a와 b의 사칙연산</p>
<p>a + b = <%= a+b %></p>
<p>a - b = <%= a-b %></p>
<p>a * b = <%= a*b %></p>
<p>a / b = <%= a/b %></p>


</body>
</html>