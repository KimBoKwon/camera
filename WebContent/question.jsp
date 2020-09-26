<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.bokwon.dto.QuestionDto"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<QuestionDto> list = (ArrayList<QuestionDto>)request.getAttribute("QuestionList");
	int  i = 0;
%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Bulletin Board</title>
    
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">

    </head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">Bulletin Board</div>
      <div class="list-group list-group-flush">
        <a href="camerahugi.nhn" class="list-group-item list-group-item-action bg-light">카메라 리뷰</a>
        <a href="photoshare.nhn" class="list-group-item list-group-item-action bg-light">사진 공유</a>
        <a href="freeboard.nhn" class="list-group-item list-group-item-action bg-light">자유 게시판</a>
        <a href="question.nhn" class="list-group-item list-group-item-action bg-light">문의 사항</a>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
        <button class="btn btn-primary" id="menu-toggle">Toggle Menu</button>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="index.nhn">Home <span class="sr-only">(current)</span></a>
            </li>
          </ul>
        </div>
      </nav>

    <div class="container-fluid">
        <div class="container">
            <h2>문의 사항</h2>
            <table class="table table-dark table-striped">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>글제목</th>
                        <th>작성자</th>
                    </tr>
                </thead>
                <tbody>
                	<%
						for (QuestionDto wr : list) {%>
							<tr onclick="modal_show(<%=wr.getNum()%>)">
								<td><%=wr.getNum()%></td>
								<td><%=wr.getJe()%></td>
								<td><%=wr.getWriter()%></td>
							</tr>
						<input type="hidden" id="content<%=wr.getNum() %>" value="<%=wr.getContent()%>">
					<%}
					%>
                </tbody>
            </table>
            <div class="modal" id="myModal">
		    <div class="modal-dialog">
		      <div class="modal-content">
		      
		        <!-- Modal Header -->
		        <div class="modal-header">
		          <h4 class="modal-title">글 내용</h4>
		          <button type="button" class="close" data-dismiss="modal"></button>
		        </div>

					<!-- Modal body -->
		        	<div class="modal-body" id="hugi">
		        	</div>
		        
		        <!-- Modal footer -->
		        <div class="modal-footer">
		          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
		        </div>
		        
		      </div>
		    </div>
		  </div>
	<p>원하는 게시물을 선택하면 내용을 보실수 있습니다!</p>
	<a href="questionwrite.nhn" class="btn btn-primary pull-right">글쓰기</a>
        </div>
    </div>
    <!-- /#page-content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
      
    function modal_show (num) {
	$("#myModal").modal("show");
	var hugi = $("#content" + num).val();

	$("#hugi").text(hugi);
}
  </script>

</body>

</html>