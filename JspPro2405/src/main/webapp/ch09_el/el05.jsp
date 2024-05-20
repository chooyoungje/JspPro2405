<%@page import="ch09.Student"%>
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
	Student s = new Student();
s.setName("홍길동");
s.setAge(20);
request.setAttribute("student", s);
%>
${student.name } <!-- student.getName() 메소드를 실행함-->
${student.age } <!--  student.getAge() 이 메소드가 있어야함-->
</body>
</html>