<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%--
    ${test} : 영역담당 객체에 저장된 속성 중 이름이 test인 속성의 값을 리턴.
            pageContext < request < session < application
      1. pageContext 객체에 test 속성검색. 존재하면 속성값 리턴
      
      2. pageContext에 속성이 없으면
         request 객체에 test 속성검색. 존재하면 속성값 리턴
         
      3. request에 속성이 없으면
         session 객체에 test 속성검색. 존재하면 속성값 리턴
         
      4. session에 속성이 없으면
         application 객체에 test 속성검색. 존재하면 속성값 리턴
         
      5. application에 속성이 없으면
         아무것도 출력하지 않는다.  null도 출력하지 않음. 오류발생도 없음
         
    직접 영역담당 객체를 지정할 수 있다.
      pageContext 객체의 속성 : ${pageScope.test}                       
      request 객체의 속성 : ${requestScope.test}                     
      session 객체의 속성 : ${sessionScope.test}
      application 객체의 속성 : ${applicationScope.test}               
 --%>

<body>
<%
request.setCharacterEncoding("utf-8");
request.setAttribute("test", "request test 속성");
String tel ="010-1111-2222";
%>

<h3>JSP의 el을 이용하여 파라미터와 속성값을 출력</h3>
1. pageContext의 속성값 : ${test} <br> 
<!-- pageContext, request, session, application 순으로 test를 찾아서 보여준다-->
<!-- request에 넣었기 때문에 session은 무시가 된다 -->



2. session test의 속성값 : ${sessionScope.test}<br> <!-- 세션에 있는 값 가져오기 -->

3. today 속성값 : ${today}<br>
  
4. name 파라미터값 : ${param.name }<br>  <!-- form에서 담겨 넘어온 값 -->

5. tel 변수값 : el로 표현 못 함 <br>

6. tel 속성값 : ${tel } <br> 
<!-- pageContext, reqeust,session,application 어느 것에도 담기지 않아서 보이지 않는다  -->
7. noAttribute 속성값 : ${noAttribute }
<hr>
<h3>JSP의 스크립트를 이용하여 파라미터와 속성값 출력</h3>
1. pageContext의 속성값 : <%=pageContext.getAttribute("test")%><br> 

2. session test의 속성값 : <%=session.getAttribute("test")%><br>

3. today 속성값 :  <%=session.getAttribute("today") %><br>  

4. name 파라미터값 :  <%=request.getParameter("name") %><br> 

5. tel 변수값 :  <%=tel %><br>

6. tel 속성값 :   <%=pageContext.getAttribute("tel") %><br> 

7. noAttribute 속성값 :  <%=pageContext.getAttribute("noAttribute") %>
<hr>
</body>
</html>