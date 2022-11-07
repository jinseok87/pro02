<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<title>로그인페이지</title>
<style>
.container {
	margin-top: 90px;
	text-align: center;
	width: 500px;
}

.btn-group {
	width: 300px;
}

.link-group {
	margin-top: 30px;
}

.title {
	margin-bottom: 30px;
}

.btn-a {
	width: 200px;
}
</style>
</head>

<body>
	<div class="container">
		<h2 class="title">로그인 페이지</h2>
			<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/CustomLoginCtrl" method="post">
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
			<div class="btn-group">
				<input class="btn1 btn btn-dark" type="submit" name="submit" value="로그인"> <input class="btn2 btn btn-dark" type="reset" name="reset" value="취소">
			</div>
			<div class="link-group">
				<a href="<%=request.getContextPath()%>/join.jsp" class="btn-a btn btn-light ">회원가입</a>
			</div>
		</form>
	</div>
</body>
</html>