<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*, java.sql.* , kr.co.myshop.vo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 수정 페이지</title>
</head>
<body>
	<%
	Notice vo = (Notice)request.getAttribute("notice");
	%>
	
	<h2> 공지 수정 페이지</h2>
	<form action="<%=request.getContextPath() %>UpdateBoardCtrl" name = "frm1" class="frm1">
		<table class="table">
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" class="form_input"><%=vo.getTitle()%></td>
				</tr>				
				<tr>
					<th>내용</th>
					<td><textarea rows="40" cols="40" class="form_input"></textarea></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><%=vo.getAuthor()%></td>
				</tr>
				<tr>
					<th>작성일</th>
					<td><%=vo.getResDate()%></td>
				</tr>
			</tbody>
		</table>
		<div class="bt_group">
			<input type = "submit" class="bt_submit" name="submit" value="수정">
			<input type = "reset" class="bt_reset" name="reset" value="취소">
			<a href ="<%=request.getContextPath()%>/GetBoardListCtrl" >목록으로</a>
		</div>
	</form>
</body>
</html>