<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bokwon.dto.UserDto"%>
<%
UserDto dto = (UserDto)session.getAttribute("user");
%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Canon</title>

	<link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
	<!-- Bootstrap core CSS -->
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
	
	<!-- Custom styles for this template -->
	<link href="css/styles.css" rel="stylesheet">

</head>

<body id="page-top" style="background-image: url('assets/img/backgroundcamera.jpg'); background-size: cover;
background-repeat: repeat-y;">
  <!-- Page Content -->
  <div class="container">

    <div class="row">

      <div class="col-lg-3">
      	<div class="side">
	        <a href="index.nhn" class="my-4" style="font-size: 50px;">Bo Kwon</a>
	        <div class="list-group">
	          <a href="canon-fulldslr.nhn" class="list-group-item">Canon-Full DSLR</a>
	          <a href="canon-cropdslr.nhn" class="list-group-item">Canon-Crop DSLR</a>
	          <a href="canon-fullmirrorless.nhn" class="list-group-item">Canon-Full MIRRORLESS</a>
	          <a href="canon-cropmirrorless.nhn" class="list-group-item">Canon-Crop MIRRORLESS</a>
	          <a href="canon-RFlens.nhn" class="list-group-item">Canon-RFlens</a>
	          <a href="canon-EFlensfull.nhn" class="list-group-item">Canon-EFlens Full</a>
	          <a href="canon-EFlenscrop.nhn" class="list-group-item">Canon-EFlens Crop</a>
	        </div>
      	</div>


      </div>
      <!-- /.col-lg-3 -->

      <div class="col-lg-9">

        <div id="carouselExampleIndicators" class="carousel slide my-4" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
              <img class="d-block img-fluid" src="assets/img/canonmain1.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="assets/img/canonmain2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block img-fluid" src="assets/img/canonmain3.jpg" alt="Third slide">
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>

        <div class="row">

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/efs55f2.8isusm.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon EF-S 17-55mm F2.8 IS USM</a>
                </h4>
                <h5>약 42만원</h5>
                <p class="card-text">호환바디 : 크롭DSLR용</p>
                <p class="card-text">화각 : 표준줌렌즈</p>
                <p class="card-text">최대 조리개 : F2.8</p>
                <p class="card-text">최단 촬영거리 : 35cm</p>
                <p class="card-text">무게 : 645g</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/efs55f3.5isstm.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon EF-S 18-55mm F3.5-5.6 IS STM</a>
                </h4>
                <h5>약 8만원</h5>
                <p class="card-text">호환바디 : 크롭DSLR용</p>
                <p class="card-text">화각 : 표준줌렌즈</p>
                <p class="card-text">최대 조리개 : F3.5</p>
                <p class="card-text">최단 촬영거리 : 25cm</p>
                <p class="card-text">무게 : 205g</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/efs85f4isusm.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon EF-S 17-85mm F4-5.6 IS USM</a>
                </h4>
                <h5>약 15만원</h5>
                <p class="card-text">호환바디 : 크롭DSLR용</p>
                <p class="card-text">화각 : 표준줌렌즈</p>
                <p class="card-text">최대 조리개 : F4</p>
                <p class="card-text">최단 촬영거리 : 35cm</p>
                <p class="card-text">무게 : 475g</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/efs18f4.5isstm.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon EF-S 10-18mm F4.5-5.6 IS STM</a>
                </h4>
                <h5>약 26만원</h5>
                <p class="card-text">호환바디 : 크롭DSLR용</p>
                <p class="card-text">화각 : 광각줌렌즈</p>
                <p class="card-text">최대 조리개 : F4.5</p>
                <p class="card-text">최단 촬영거리 : 22cm</p>
                <p class="card-text">무게 : 240g</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/efs22f3.5usm.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon EF-S 10-22mm F3.5-4.5 USM</a>
                </h4>
                <h5>약 28만원</h5>
                <p class="card-text">호환바디 : 크롭DSLR용</p>
                <p class="card-text">화각 : 광각줌렌즈</p>
                <p class="card-text">최대 조리개 : F3.5</p>
                <p class="card-text">최단 촬영거리 : 24cm</p>
                <p class="card-text">무게 : 385g</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/efs135f3.5isstm.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon EF-S 18-135mm F3.5-5.6 IS STM</a>
                </h4>
                <h5>약 24만원</h5>
                <p class="card-text">호환바디 : 크롭DSLR용</p>
                <p class="card-text">화각 : 슈퍼줌렌즈</p>
                <p class="card-text">최대 조리개 : F3.5</p>
                <p class="card-text">최단 촬영거리 : 39cm</p>
                <p class="card-text">무게 : 480g</p>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/efs250f4isstm.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon EF-S 55-250mm F4-5.6 IS STM</a>
                </h4>
                <h5>약 17만원</h5>
                <p class="card-text">호환바디 : 크롭DSLR용</p>
                <p class="card-text">화각 : 망원줌렌즈</p>
                <p class="card-text">최대 조리개 : F4</p>
                <p class="card-text">최단 촬영거리 : 85cm</p>
                <p class="card-text">무게 : 375g</p>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/efs24f2.8stm.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon EF-S 24mm F2.8 STM</a>
                </h4>
                <h5>약 16만원</h5>
                <p class="card-text">호환바디 : 크롭DSLR용</p>
                <p class="card-text">화각 : 광각줌렌즈</p>
                <p class="card-text">최대 조리개 : F2.8</p>
                <p class="card-text">최단 촬영거리 : 16cm</p>
                <p class="card-text">무게 : 125g</p>
              </div>
            </div>
          </div>

        </div>
        <!-- /.row -->

      </div>
      <!-- /.col-lg-9 -->

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2020</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Bootstrap core JS-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"></script>
  <!-- Third party plugin JS-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
  <!-- Core theme JS-->
  <script src="js/scripts.js"></script>
  <script>
$(function(){
    var $win = $(window);
    var top = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
 
    /*사용자 설정 값 시작*/
    var speed          = 500;     // 따라다닐 속도 : "slow", "normal", or "fast" or numeric(단위:msec)
    var easing         = 'linear'; // 따라다니는 방법 기본 두가지 linear, swing
    var $layer         = $('.side'); // 레이어 셀렉팅
    var layerTopOffset = 0;   // 레이어 높이 상한선, 단위:px
    $layer.css('position', 'relative').css('z-index', '1');
    /*사용자 설정 값 끝*/
 
    // 스크롤 바를 내린 상태에서 리프레시 했을 경우를 위해
    if (top > 0 )
        $win.scrollTop(layerTopOffset+top);
    else
        $win.scrollTop(0);
 
    //스크롤이벤트가 발생하면
    $(window).scroll(function(){
        yPosition = $win.scrollTop(); //이부분을 조정해서 화면에 보이도록 맞추세요
        if (yPosition < 0)
        {
            yPosition = 0;
        }
        $layer.animate({"top":yPosition }, {duration:speed, easing:easing, queue:false});
    });
});
</script>
</body>

</html>
