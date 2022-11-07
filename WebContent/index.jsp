<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous"><script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

<title>메인화면</title>
<style>
.carousel-caption{
	font-size: 30px;
	text-shadow: 2px 2px 2px black; 
}
</style>
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
	</header>
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./image/main_visual1.jpg" class="d-block w-100" alt="main_1">
      <div class="carousel-caption d-none d-md-block">
        <h5>EASE BY TEMPUR</h5>
        <p>매트리스 구매시 25% 할인</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="./image/main_visual2.jpg" class="d-block w-100" alt="main_2">
      <div class="carousel-caption d-none d-md-block">
        <h5>EASE BY TEMPUR</h5>
        <p>베개 구매시 25% 할인</p>
      </div>
    </div>
    <div class="carousel-item">
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
	<footer>
		<%@ include file="footer.jsp"%>
	</footer>
</body>
</html>