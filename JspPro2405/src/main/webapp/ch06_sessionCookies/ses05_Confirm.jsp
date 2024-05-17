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
	String id = "";
	try{
		Cookie[] cookies = request.getCookies(); // 쿠키 전부 가져오기
		if(cookies != null){
			for(int i = 0; i < cookies.length; i++){
				if(cookies[i].getName().equals("id")){ // "id"라는 이름을 가진 쿠키 찾기
					id = cookies[i].getValue();
				}
			}
			// 쿠키를 전부 뒤져봤는데도 id라는 쿠키가 없다면
			if(id.equals("")){
				response.sendRedirect("ses03_Member.jsp");
			} 
			// 끝
			
		}else {
			response.sendRedirect("ses03_Member.jsp");
		}
	} catch(Exception e){
		response.sendRedirect("ses03_Member.jsp");
	}
%>
<form methpd="post" action="ses06_cookieLogout.jsp">
	<%=id %>님이 로그인 했습니다
	<input type="submit" value="로그아웃">
</form>
</body>
</html>