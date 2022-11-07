<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*,java.sql.*, kr.co.myshop.vo.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세페이지</title>
</head>
<style>
.wrap{
	text-align: center;
}
</style>
<body>
<%@ include  file = "../header.jsp"  %>
<%
	Notice vo = (Notice) request.getAttribute("notice");
%>
	<div class="container wrap">
		<h2 class="title">공지사항 상세페이지</h2>
		<table class="table">
			<tbody>
				<tr>
					<th>글번호</th>
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
					<th>작성일</th>
					<td><%=vo.getResDate() %></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="btn-group">
		<a href = "<%=request.getContextPath()%>/GetBoardListCtrl">공지사항목록</a>
	</div>
	<% if(sid.equals("admin")){ %>
	<div class="btn-group">
		<a href = "<%=request.getContextPath()%>/UpdateBoardCtrl?notiNo=<%=vo.getNotiNo()%>">글수정</a>
	</div>
	<div class="btn-group">
		<a href = "<%=request.getContextPath()%>/DeleteBoardCtrl?notiNo=<%=vo.getNotiNo()%>">삭제</a>
	</div>
	<%} %>
	<%@ include file = "../footer.jsp" %>
</body>
</html>