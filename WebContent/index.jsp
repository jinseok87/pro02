<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>메인 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">

<style>
.in_container { clear:both; width:1400px; margin:0 auto; }
.in_container:after { content:""; display:block; clear:both; }

.carousel-caption{
	font-size: 30px;
	text-shadow: 2px 2px 2px black; 
}

.nav-item{
	color : white;
}
.nav-item>a{
	color : white;
}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="5000">
      <img src="./image/main_visual1.jpg" class="d-block w-100" alt="main_1">
      <div class="carousel-caption d-none d-md-block">
        <h5>EASE BY TEMPUR</h5>
        <p>매트리스 구매시 25% 할인</p>
      </div>
    </div>
        <div class="carousel-item" data-bs-interval="2000">
      <img src="./image/main_visual2.jpg" class="d-block w-100" alt="main_2">
      <div class="carousel-caption d-none d-md-block">
        <h5>EASE BY TEMPUR</h5>
        <p>베개 구매시 25% 할인</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="./image/main_visual3.jpg" class="d-block w-100" alt="main_3">
      <div class="carousel-caption d-none d-md-block">
        <h5>템퍼 SMARTCOOL</h5>
        <p>베개 구매 시 25% 할인</p>
      </div>
    </div>
        <div class="carousel-item">
      <img src="./image/main_visual4.jpg" class="d-block w-100" alt="main_4">
      <div class="carousel-caption d-none d-md-block">
        <h5>베개 및 액세서리</h5>
        <p>구매 시 15% 할인</p>
      </div>
    </div>
            <div class="carousel-item">
      <img src="./image/main_visual5.jpg" class="d-block w-100" alt="main_5">
      <div class="carousel-caption d-none d-md-block">
        <h5>프리마 매트리스</h5>
        <p>구매시 오리지날 배게 증정 및 30%할인</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>