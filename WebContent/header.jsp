<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	//로그인을 했을경우 sid와 sname값을 받아올수 있고  받아 왔을때 메뉴의 표현이 달라지게 
	//sid와 sname값을 받아온다 
	String sid  =(String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%> 

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
	.sub_menu1 {
		display: none;
	}
	.link1:HOVER .sub_menu1{
	display:"";
	}
</style>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="./index.jsp">TEMPUR</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse " id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
       <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">매트리스</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="<%=request.getContextPath()%>">싱글매트리스</a>
          <a class="dropdown-item" href="#">슈퍼싱글매트리스</a>
          <a class="dropdown-item" href="#">퀸매트리스</a>
          <a class="dropdown-item" href="#">킹매트리스</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">베개</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="<%=request.getContextPath()%>">템퍼 배게 컬렉션</a>
          <a class="dropdown-item" href="<%=request.getContextPath()%>">템퍼 기능성 서포트 베개</a>
          <a class="dropdown-item" href="<%=request.getContextPath()%>">템퍼 트래디셔널 & 컴포트 베개</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">소파</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="<%=request.getContextPath()%>">싱글 소파</a>
          <a class="dropdown-item" href="<%=request.getContextPath()%>">더블 소파</a>
          <a class="dropdown-item" href="<%=request.getContextPath()%>">리클라이너</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">게시판</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="<%=request.getContextPath()%>/GetBoardListCtrl">notice</a>
          <a class="dropdown-item" href="#">Q&A</a>
        </div>
    </ul>
    <ul>
    	<% if(sid!=null) {%>
    		<li>
    			<span>반갑습니다<%=sname %>님</span>
    		</li>
    		<li>
				<a href="<%=request.getContextPath()%>/GetCustomInforCtrl" class="btn1 btn btn-dark">회원정보</a>
    			<a href="<%=request.getContextPath()%>/custom/logOutCtrl" class="btn1 btn btn-dark">로그아웃</a>
    		</li>
    		<%if(sid.equals("admin")){ %>
    			<li>
    				<a href="<%=request.getContextPath()%>/admin/index.jsp" class="btn1 btn btn-dark">관리자페이지</a>
    			</li>
    		<%}%>
	</ul>
    	<%}else{ %>
		<div class="btn-group">	
			<a href="<%=request.getContextPath()%>/custom/login.jsp" class="btn1 btn btn-dark">로그인</a>
			<a href="<%=request.getContextPath()%>/custom/membership.jsp" class="btn1 btn btn-dark" tabindex="-1" role="button" aria-disabled="true">회원가입</a>
		</div>
		<%} %>
	</div>
	
</nav>