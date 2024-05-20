<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 세션을 삭제하는 메소드 -->
<% session.invalidate(); %>

<script>
	alert("로그아웃")
	location.href="ses11_confirm.jsp"
</script>
</body>
</html>