<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>공지사항 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>
.container {
	text-align: center;
}

.title {
	padding-top: 36px;
	padding-bottom: 20px;
}

.table {
	text-align: center;
}
</style>
</head>
<body>
	<%@ include file="../header.jsp"%>
	<%
		List<Notice> notiList = (ArrayList<Notice>) request.getAttribute("notiList");
	%>

	<div class="container">
		<h2 class="title">공지사항 목록</h2>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th class="col col-1">연번</th>
					<th class="col col-5">제목</th>
					<th class="col col-2">작성자</th>
					<th class="col col-4">등록일</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < notiList.size(); i++) {
					Notice vo = notiList.get(i);
				%>
				<tr>
					<td><%=vo.getNotiNo()%></td>
					<td><a href="<%=request.getContextPath()%>/GetBoardDetailCtrl?notiNo=<%=vo.getNotiNo()%>"><%=vo.getTitle()%></a></td>
					<td><%=vo.getAuthor()%></td>
					<td><%=vo.getResDate()%></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	<div class="btn-group">
		<a href="./insertBoard.jsp">글추가</a>
	</div>
</body>
</html>