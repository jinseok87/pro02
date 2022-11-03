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
	List<Notice> notiList = (ArrayList<Notice>) request.getAttribute("notiList");
%>
<div class="content container">
	<h2 class="title">공지사항 목록</h2>
		<table class="table">
		<thead>
			<tr>
				<th>연번</th><th>제목</th><th>작성일</th>
			</tr>
		</thead>
		<tbody>
		<% for(int i=0;i<notiList.size();i++){
			Notice vo = notiList.get(i);
		%>
		<tr>
			<td><%=vo.getNotiNo() %></td>
			<td><a href="<%=request.getContextPath()%>GetBoardDetailCtrl?notiNo=<%=vo.getNotiNo() %>"><%=vo.getTitle() %></a></td>
			<td><%=vo.getResDate() %></td>
		</tr>
		<% } %>	
		</tbody>
		<a href = "<%=request.getContextPath() %>insertBoard.jsp">글 추가</a>
	</table>
</div>
</body>
</html>