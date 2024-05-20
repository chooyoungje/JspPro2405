<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>Format된 숫자를 일반 숫자로 변경하기</h3>
<fmt:parseNumber value="20,000" var="num1" pattern="##,###"/>
<fmt:parseNumber value="10,000" var="num2" pattern="##,###"/>
합 : ${num1 + num2 }
합 : <fmt:parseNumber value="${num1+num2 }"  pattern="##,###"/>


<h3>Format된 날짜를 일반 날짜로 변경하기</h3>

<fmt:parseDate value="2019-04-18 12:00:00" pattern="yyyy-mm-dd HH:mm:ss" var="day"/>
날짜 : ${day }

<h3>2019년 4월 18일 날짜 구하기</h3>
<fmt:formatDate value="${day }" pattern="yyyy-mm-dd HH-mm-ss E요일"/>
</body>
</html>