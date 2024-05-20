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
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if(id.equals(pwd)){
	Cookie cookie = new Cookie("id",id) ;
	cookie.setMaxAge(60*4);
	response.addCookie(cookie);
	response.sendRedirect("ses05_Confirm.jsp");
} else{
	%>
	<script>
		alert("아이디가 맞지 않습니다")
		history.go(-1);
	</script>
	
<%
}
%>

<%=id %>
<%=pwd %>
</body>
</html>