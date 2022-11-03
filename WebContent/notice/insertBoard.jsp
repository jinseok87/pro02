<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글추가</title>
</head>
<body>
	<h2>글추가</h2>
	<form action="<%=request.getContextPath()%>InsertBoradProCtrl" method="post" class="frm1">
		<table class="table">
		 	<tbody>
		 		<tr>
		 			<th>제목</th>
		 			<td><input type="text" name="title" id="title" placeholder="제목입력" class="form_input" autofocus required></td>
		 		</tr>
		 		<tr>
		 			<th>내용</th>
		 			<td><textarea rows="40" cols="40" name="content" id ="content" class="form_input"></textarea></td>
		 		</tr>
		 		<tr>
		 			<th>작성자</th>
		 			<td><input type="text" name ="author" id="author" class="form_input" ></td>
		 		</tr>
		 	</tbody>		
		</table>
	</form>
	<div class="bt_group">
		<input type="submit" value="등록" class="bt_submit" name="submit">
		<input type="reset" value="취소" class="bt_reset" name ="reset">
	</div>
	
</body>
</html>