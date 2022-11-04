<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인페이지</title>
</head>
<body>
	<div>
		<h2>로그인 페이지</h2>
		<form class="frm1" action="MemberLoginCtrl" method="post">
			<table class="table">
				<tbody>
					<tr>
						<th>아이디</th>
						<td><input class="bt_input" type="text" name="id" placeholder="아이디입력" autofocus required></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input class="bt_input" type="password" name="pw" placeholder="비밀번호입력" required></td>
					</tr>
				</tbody>
			</table>
			<div class="bt_group">
				<input class="bt_submit" type ="submit" name ="submit" value="로그인">
				<input class="bt_reset" type ="reset" name="reset" value="취소">
				<a href="<%=request.getContextPath()%>/join.jsp">회원가입하기</a>
			</div>
		</form>
	</div>
</body>
</html>