<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<title>제품목록</title>
</head>
<body>
	<%@include file="../header.jsp"%>
	<%
		List<Product> proList = (ArrayList<Product>) request.getAttribute("proList");
	%>
	<div class="content container" id="content">
		<h2 class="title">제품 목록</h2>
		<ul class="row" id="best">
			<%
				for (int i = 0; i < proList.size(); i++) {
				Product pro = proList.get(i);
			%>
			<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
				<div class="card" style="width: 18rem;">
					<img src="<%=request.getContextPath()%>/upload/<%=pro.getProPic()%>" class="card-img-top" alt="<%=pro.getProName()%>">
					<div class="card-body">
						<h5 class="card-title"><%=pro.getProName()%></h5>
						<p class="card-text"><%=pro.getProSpec()%></p>
						<p class="card-text">
							<strong style="color: red;"><%=pro.getProPrice()%>원</strong> (
							<del><%=pro.getOriPrice()%>)
							</del>
						</p>
						<a href="<%=request.getContextPath()%>/GetProductDetailCtrl?proNo=<%=pro.getProNo()%>" class="btn btn-primary">제품 상세보기</a>
					</div>
				</div>
			</li>
			<%}%>
			<%if (proList.size() == 0) {%>
			<li style="width: 1000px;">
				<hr>
				<p>해당상품이 존재하지 않습니다.</p>
				<hr>
			</li>
			<%}%>
		</ul>
		<%if (sid.equals("admin")) {%>
		<div class="btn-group">
			<a href="<%=request.getContextPath()%>/InsertProductCategoryCtrl" class="btn btn-danger">상품 등록</a>
		</div>
		<%}%>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
</html>