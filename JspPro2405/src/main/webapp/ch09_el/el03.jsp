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
<h3>\${5 + 7} = ${5+7}</h3>
<h3>\${8-3 } =${8-3 }</h3>
<h3>\${8%3 }=${8%3 }</h3>
<h3>\${8 mod 3 }=${8 mod 3 }</h3>
<h3>\${10==9 } = ${10 ==9 }</h3>
<h3>\${10 !=9 } = ${10!=9 }</h3>
<h3>\${10>=9 }=${10>=9 }</h3>
<h3>\${10 ge 9 } = ${10 ge 9 }</h3>
<h3>\${5 lt 9 }=${5 lt 9 }</h3>
<h3>\${5 gt 9 }= ${5 gt 9 }</h3>
<h3>\${10 } = ${10 }</h3>
<h3>\${5+4 == 8 ? 8 : 10 } = ${5+4 == 8? 8:10}</h3>
<h3>\${'EL의 상수표현' } = ${'상수표현' }</h3>
</body>
</html>