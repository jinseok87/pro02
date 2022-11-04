<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입페이지</title>
</head>
<body>
	<div class="form_wrap">
		<h2 class="title">회원가입</h2>
		<form class="frm1"
			action="<%=request.getContextPath()%>/InsertCustomCtrl" method="post"
			onsubmit="return joinCheck(this)">
			<table class="table">
				<tbody>
					<tr>
						<th>아이디</th>
						<td>
							<input type="text" name="cusId" id="id"placeholder="아이디입력" class="form_input" autofocus required>
							<input type="button" class="btn" value="아이디 중복 확인"	onclick="idCheck()"> 
							<input type="hidden" name="idck"value="no" />
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="cusPw" id="pw"placeholder="비밀번호입력" class="form_input" required></td>
					</tr>
					<tr>
						<th>비밀번호확인</th>
						<td><input type="password" id="pw2" placeholder=" 비밀번호확인"class="form_input" required></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" name="cusName" id="name"placeholder="이름입력" required></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" name="tel" id="tel"placeholder="전화번호입력" required></td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<button id="post_btn" onclick="findAddr()"class="btn btn-primary">우편번호 검색</button> <br> 
							<input type="text" name="postcode" id="postcode" placeholder="우편번호"class="form_input"><br> 
							<input type="text"name="address1" id="address1" placeholder="주소입력" required><br>
							<input type="text" name="address2" id="address2"placeholder="상세주소" class="form_input" required>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="bt_group">
				<input type="submit" name="bt_submit" class="rg_bt" value="회원가입">
				<input type="reset" name="bt_reset" class="re_bt" value="취소">
				<a href="<%=request.getContextPath()%>/custom/login.jsp">로그인</a>
			</div>
		</form>
		<script>
			   function idCheck() {
				var cusId = document.frm1.cusId.value;
				var win = window.open("idCheck.jsp?cusId=" + cusId, "id 중복 체크",
						"width=400, height=300");
			}
			function joinCheck(f) {
				if (f.cusPw.value != f.cusPw2.value) {
					alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
					f.cusPw.focus();
					return false;
				}
				if (f.idck.value != "yes") {
					alert("아이디 중복 체크를 하지 않으셨습니다.");
					return false;
				}
			}   
		</script>		   
		<script>
			   function findAddr() {
				new daum.Postcode(
						{
							oncomplete : function(data) {
								console.log(data);
								var roadAddr = data.roadAddress;
								var jibunAddr = data.jibunAddress;
								document.getElementById("postcode").value = data.zonecode;
								if (roadAddr !== '') {
									document.getElementById("address1").value = roadAddr;
								} else if (jibunAddr !== '') {
									document.getElementById("address1").value = jibunAddr;
								}
								document.getElementById("address2").focus();
							}
						}).open();
			}   
		</script>		   
		<script
			src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	</div>
</body>
</html>