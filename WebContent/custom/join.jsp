<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입페이지</title>
</head>
<body>
	<div class = "form_wrap">
		<h2>회원가입</h2>
		<form action="<%=request.getContextPath()%>/MamberAddProCtrl" method="post" class="frm1" onsubmit="return joinAlert(this)">
			<table class="table">
			 	<tbody>
			 		<tr>
			 			<th>아이디</th>
			 			<td>
			 			<input type="text" name="cusId" id="id" placeholder="아이디입력" class="form_input" autofocus required>
			 			<button type="button" class="in_btn" onclick="idCheck()" style="margin-left:20px">아이디 중복 확인</button>
                        <input type="hidden" name="idck" value="no" />
			 			</td>
			 		</tr>
			 		<tr>
			 			<th>비밀번호</th>
			 			<td><input type="password" name="cusPw" id="pw" placeholder="비밀번호입력" class="form_input"  required></td>
			 		</tr>
			 		<tr>
			 			<th>비밀번호확인</th>
			 			<td><input type ="password" id="pw2" placeholder = " 비밀번호확인" class="form_input" required> </td>
			 		</tr>
			 		<tr>
			 			<th>이름</th>
			 			<td><input type = "text" name="cusName" id="name" placeholder="이름입력" required></td>
			 		</tr>
			 		<tr>
			 			<th>전화번호</th>
			 			<td><input type="tel" name ="tel" id="tel" placeholder="전화번호입력" required></td>
			 		</tr>
			 		<tr>
			 			<th>주소</th>
			 			<td><input type ="text" name = "address" id="address" placeholder="주소입력"></td>
			 		</tr>
			 	</tbody>		
			</table>
		</form>
		<script>
        function joinAlert(f){
        	if(f.pw.value!=f.pw2.value){
        		alert("비밀번호가 서로 일치 하지 않습니다.");
        		return false;
        	}
        	if(f.idck.value!="yes"){
        		alert("아이디 중복 체크를 하지 않으셨습니다.");
        		return false;
        	}
        }
        function idCheck() {
        	var win = window.open("idCheck.jsp", "idCheckWin",
        			"width=600, height=400");
        }
		</script>
		<div class="bt_group">
			<input type="submit" value="등록" class="bt_submit" name="submit">
			<input type="reset" value="취소" class="bt_reset" name ="reset">
		</div>
	</div>
</body>
</html>