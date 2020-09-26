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

<body id="page-top" style="background-image: url('assets/img/backgroundcamera.jpg');
			background-size: cover;
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
              <a href="#"><img class="card-img-top" src="assets/img/canon5dm4.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon Eos 5D MARK 4</a>
                </h4>
                <h5>약 270만원</h5>
                <p class="card-text">유효화소수 : 3040만화소</p>
                <p class="card-text">ISO : 100~12800</p>
                <p class="card-text">최소 셔터 스피트 : 8000초</p>
                <p class="card-text">부가기능 : 전자수평계, 방진, 방습, 무선전송, 렌즈수차보정, 리사이즈</p>
                <p class="card-text">동영상  해상도 : UHD(4K)</p>
                <p class="card-text">초점 영역 : 61개</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/canon5dm3.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon Eos 5D  MARK 3</a>
                </h4>
                <h5>약 90만원</h5>
                <p class="card-text">유효화소수 : 2230만화소</p>
                <p class="card-text">ISO : 100~12800</p>
                <p class="card-text">최소 셔터 스피트 : 8000초</p>
                <p class="card-text">부가기능 : 전자수평계, 방진, 방습, 얼굴인식, 벌브지원, 렌즈수차보정, 리사이즈</p>
                <p class="card-text">동영상  해상도 : Full-HD</p>
                <p class="card-text">초점 영역 : 61개</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/canon5dm2.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon Eos 5D MARK 2</a>
                </h4>
                <h5>약 79만원</h5>
                <p class="card-text">유효화소수 : 2110만화소</p>
                <p class="card-text">ISO : 100~6400</p>
                <p class="card-text">최소 셔터 스피트 : 8000초</p>
                <p class="card-text">부가기능 : 방진, 방습, 주변광량보정</p>
                <p class="card-text">동영상  해상도 : Full-HD</p>
                <p class="card-text">초점 영역 : 15개</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/canon6d.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon Eos 6D</a>
                </h4>
                <h5>약 44만원</h5>
                <p class="card-text">유효화소수 : 2020만화소</p>
                <p class="card-text">ISO : 100~25600</p>
                <p class="card-text">최소 셔터 스피트 : 4000초</p>
                <p class="card-text">부가기능 : 전자수평계, 방진, 방습, 얼굴인식, 벌브지원, 무선전송, 렌즈수차보정</p>
                <p class="card-text">동영상  해상도 : Full-HD</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/canon6dm2.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon Eos 6D MARK 2</a>
                </h4>
                <h5>약 170만원</h5>
                <p class="card-text">유효화소수 : 2620만화소</p>
                <p class="card-text">ISO : 100~40000</p>
                <p class="card-text">최소 셔터 스피트 : 8000초</p>
                <p class="card-text">부가기능 : 손떨림방지, 방진, 방습, 얼굴인식, 무선전송, 렌즈수차보정</p>
                <p class="card-text">동영상  해상도 : Full-HD</p>
                <p class="card-text">초점 영역 : 45개</p>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/canon1dx.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon Eos 1D X</a>
                </h4>
                <h5>약 150만원</h5>
                <p class="card-text">유효화소수 : 1810만화소</p>
                <p class="card-text">ISO : 100~51200</p>
                <p class="card-text">최소 셔터 스피트 : 8000초</p>
                <p class="card-text">부가기능 : 전자수평계, 방진, 방습, 세로그립일체형, 렌즈수차보정, 리사이즈</p>
                <p class="card-text">동영상  해상도 : UHD(4K)</p>
                <p class="card-text">초점 영역 : 61개</p>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/canon1dxm2.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon Eos 1D X MARK 2</a>
                </h4>
                <h5>약 530만원</h5>
                <p class="card-text">유효화소수 : 2020만화소</p>
                <p class="card-text">ISO : 100~51200</p>
                <p class="card-text">최소 셔터 스피트 : 8000초</p>
                <p class="card-text">부가기능 : 전자수평계, 방진, 방습, 세로그립일체형, 무선전송, 렌즈수차보정, 리사이즈</p>
                <p class="card-text">동영상  해상도 : UHD(4K)</p>
                <p class="card-text">초점 영역 : 61개</p>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
              <a href="#"><img class="card-img-top" src="assets/img/canon1dxm3.jpg" alt=""></a>
              <div class="card-body">
                <h4 class="card-title">
                  <a href="#">Canon Eos 1D X MARK 3</a>
                </h4>
                <h5>약 870만원</h5>
                <p class="card-text">유효화소수 : 2010만화소</p>
                <p class="card-text">ISO : 100~102400</p>
                <p class="card-text">최소 셔터 스피트 : 8000초</p>
                <p class="card-text">부가기능 : 세로그랩일체형, 렌즈수차보정, 리사이즈, 클라리티(이미지보정)</p>
                <p class="card-text">동영상  해상도 : UHD(4K)</p>
                <p class="card-text">초점 영역 : 191개</p>
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
