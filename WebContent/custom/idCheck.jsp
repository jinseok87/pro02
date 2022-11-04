<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//데이터 베이스에서  아이디와 비밀번호를 불러옴
	String cusId = request.getParameter("cusId");
	String cusPw = request.getParameter("cusPw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 확인</title>
</head>
<body>
	<div class="wrap">
		<h2>아이디 중복확인</h2>
		<form action="<%=request.getContextPath()%>/IdCheckCtrl" method="post" onsubmit="return invalidCheck(this)">
			<label for="cusId">아이디</label>
			<input type="text" name="cusId" id="cusId" placeholder="아이디입력" value="<%=cusId%>">
			<input type="submit" value="중복확인">
		</form>
   <script>
	   function invalidCheck(f) {
	     var cusId= f.cusId.value;
	     cusId = cusId.trim();
	     if(cusId.length<5){
	       alert("아이디는  5자 이상 이어야 합니다.");
	       return false;
	     }
	   }
   </script>
	</div>
</body>
</html>