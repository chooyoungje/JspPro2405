<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>EL에서 연산자 사용하기</h3>
<%
	String name ="홍길동";
	request.setAttribute("name", name);
%>
<h3>\${name.equals("홍길동") } = ${name eq '홍길동'}</h3>
<h3>\${name == "홍길동" } = ${name == '홍길동' }</h3>
<h3>\${name == "홍길동" } = ${name.equals("홍길동") }</h3>
<h3>\${name != "홍길동" } = ${name ne '홍길동' }</h3>

</body>
</html>