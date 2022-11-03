<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
</head>
<body>

<%
	Notice vo = (Notice) request.getAttribute("notice");
%>
<div class="content container">
	<h2 class="title">공지사항 목록</h2>
	<table class="table">
		<tbody>
			<tr>
				<th>번호</th>
				<td><%=vo.getNotiNo() %></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><%=vo.getTitle() %></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><%=vo.getContent() %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=vo.getAuthor() %></td>
			</tr>
			<tr>
				<th>작성일시</th>
				<td><%=vo.getResDate() %></td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
		<a href="<%=request.getContextPath() %>GetBoardListCtrl" class="btn btn-danger">목록으로</a>
		<a href = "<%=request.getContextPath() %>UpdateBoardCtrl?notiNo=<%=vo.getNotiNo()%>">글 수정</a>
	</div>
</div>
</body>
</html>