<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
function calcsum(k,f){
	f.kind.value = k;
	f.submit();
	
}
</script>
 
<!--
onSubmit : 서브밋 되기 전 실행됨
form문의 type="submit" 일때만 실행이됨
f.submit(); 일때에는 적용 안 됨 
  -->
<form action="request02.jsp" method="post" onSubmit="prompt('확인')">
	<input type="hidden" name="kind" value="0">
	<input type="text" name="num">까지의 합 구하기
	<input type="submit" value="합계구하기">
	<input type="button" value="짝수합구하기" onclick="calcsum(2,this.form)">
	<input type="button" value="홀수합구하기" onclick="calcsum(1,this.form)">

</form>

</body>
</html>