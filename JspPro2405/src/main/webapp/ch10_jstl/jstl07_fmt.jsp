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
<fmt:requestEncoding value="utf-8"/>
<form method="post" name="f">
	이름:<input type="text" name="name" value="${param.name }"><br>
	입사일 : <input type="text" name="hiredate" value="${param.hiredate }" > yyyy-mm-dd 형태로 입력<br>
	급여 : <input type="text" name="salary" value="${param.salary }">
	<br>
	<script>
		document.f.salary.value=
			'<fmt:formatNumber value="${param.salary}" pattern="#,###,###"/>';
	</script>
	<input type="submit" value="전송">
	 <hr>
	 <br>이름 : ${param.name }
	 <br>입사일 : ${param.hiredate }
	 <br>연봉 : ${param.salary }
	 
</form>
</body>
</html>