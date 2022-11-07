<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품 정보 수정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
<style>
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Product pro = (Product) request.getAttribute("pro");
	ArrayList<Category> cateList = (ArrayList<Category>) request.getAttribute("cateList");
%>
<div class="content container" id="content">
	<h2 class="title">제품 등록</h2>
	<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/UpdateProductProCtrl" method="post" enctype="multipart/form-data">
		<table class="table">
			<tbody>
				<tr>
					<th>상품분류</th>
					<td>
						<p>현재 상품 코드 : <%=pro.getCateNo() %></p>
						<input type="hidden" name="cateNo" id="cateNo" value="<%=pro.getCateNo() %>">
						변경할 상품 코드 :
						<select name="updateCateNo" id="updateCateNo" onchange="updateCategory()" class="custom-select custom-select-lg mb-3">
							<option value="" selected>선택안함</option>
							<% 
								for(int i=0;i<cateList.size();i++){
									Category cate = cateList.get(i);
							%>
							<option value="<%=cate.getCateNo() %>"><%=cate.getCateName() %></option>
							<%
								}
							%>
						</select>
					</td>
				</tr>
				<tr>
					<th>상품명</th>
					<td>
						<input type="text" name="proName" id="proName" placeholder="상품명 입력" class="form-control" value="<%=pro.getProName() %>" required />
						<input type="hidden" name="proNo" id="proNo" value="<%=pro.getProNo() %>">
					</td>
				</tr>
				<tr>
					<th>제품 설명</th>
					<td><textarea cols="80" rows="6" name="proSpec" id="proSpec" class="form-control" required><%=pro.getProSpec() %></textarea></td>
				</tr>
				<tr>
					<th>제품 가격</th>
					<td><input type="text" name="oriPrice" id="oriPrice" class="form-control" value="<%=pro.getOriPrice() %>" required></td>
				</tr>
				<tr>
					<th>할인율</th>
					<td><input type="text" name="discountRate" id="discountRate" class="form-control" value="<%=pro.getDiscountRate() %>" required></td>
				</tr>
				<tr>
					<th>제품 이미지1</th>
					<td>
						<p>
							<img src="<%=request.getContextPath() %>/upload/<%=pro.getProPic() %>" alt="<%=pro.getProName() %>">
						</p>
						<input type="hidden" name="proPic" id="proPic" value="<%=pro.getProPic() %>">
						<input type="file" name="updateProPic" id="updateProPic" accept="image/*" class="form-control" onchange="changeImg()" required>
					</td>
				</tr>
				<tr>
					<th>제품 이미지2</th>
					<td>
						<p><img src="<%=request.getContextPath() %>/upload/<%=pro.getProPic2() %>" alt="<%=pro.getProName() %>"></p>
						<input type="hidden" name="proPic2" id="proPic2" value="<%=pro.getProPic2() %>">
						<input type="file" name="updateProPic2" id="updateProPic2" accept="image/*" onchange="changeImg2()" class="form-control">
					</td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-info" value="제품 정보 변경">
			<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
			<a href="<%=request.getContextPath() %>/GetProductListCtrl" class="btn btn-danger">목록으로</a>
		</div>
	</form>	
	<script>
	function updateCategory() {
		var cateNo = document.frm1.updateCateNo.value;
		document.frm1.cateNo.value = cateNo;
	}
	</script>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>