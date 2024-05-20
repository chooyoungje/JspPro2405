<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  
mvnrepository
https://mvnrepository.com/artifact/javax.servlet/jstl/1.2

tablib 지시어 표시해야한다
-->
<h3>JSTL 속성 태그 : set out remove</h3>
<c:set var="test" value="${'Hello JSTL'}" scope="session"/><br>
<!-- test라는 이름으로 value를 저장하겠다 어디에?? session에 -->
<!-- == session.setAttribute("test", "Hello JSTL"); -->
test 속성 : ${sessionScope.test }<br>
test 속성 :   <c:out value="${test }"/><br>

<c:remove var="test"/>
test 속성 : ${test }<br>


<h3>조건문 관련 태그 : if, choose 태그 </h3>
<c:if test="${5 < 10 }"> <h4>5는 10보다 작다</h4></c:if>
<c:if test="${6+3 != 10 }"><h4>6+3은 10이 아니다</h4></c:if>
<c:choose>
	<c:when test="${5+10==25}">
	<h4>5 + 10 = 25</h4>
	</c:when>
	<c:when test="${5+10==15}">
	<h4>5 + 10 = 15</h4>
	</c:when>
	<c:when test="${5+10==510}">
	<h4>5 + 10 = 510</h4>
	</c:when>
	<c:otherwise>
	<h4>5 + 10 = 모름.</h4>
	</c:otherwise>
</c:choose>
</body>
</html>