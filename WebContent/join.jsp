<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Join Page</title>
   <!--Made with love by Mutiullah Samim -->
   
	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	<link rel="stylesheet" type="text/css" href="css/styles2.css">
    
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
</head>
<body style="background-image: url('assets/img/bg-masthead.jpg');">
<div class="container1">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Sign Up</h3>
			</div>
			<div class="card-body">
				<form action="joinok.nhn" method="post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="name" id="name" class="form-control" placeholder="username">
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input type="text" name="id" id="id" class="form-control" placeholder="id">
					</div>
					<div class="form-group input-group">
				       	<div id="id-success" style="color: White;">Id 사용이 가능합니다.</div>
				    	<div id="id-danger" style="color: White;">이미 가입된 Id가 있습니다.</div>
				    </div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" name="pw" id="pw" class="form-control" placeholder="password">
					</div>
                    <div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input type="password" id="repw" class="form-control" placeholder="repeat password">
					</div>
					<div class="form-group input-group">
    					<div class="alert alert-success" id="alert-success">비밀번호가 일치합니다.</div>
    					<div class="alert alert-danger" id="alert-danger">비밀번호가 일치하지 않습니다.</div>
    				</div>
					<div class="form-group">
						<input type="submit" id="submit" value="Join" class="btn float-right login_btn">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

    $(function(){
        $("#alert-success").hide();
        $("#alert-danger").hide();
        $("#repw").keyup(function(){
//         	console.log("눌렀다");
            var pwd1=$("#pw").val();
            var pwd2=$("#repw").val();
            console.log("pw: " + pwd1);
            console.log("repw: "+ pwd2);
            
            if(pwd1 != "" || pwd2 != ""){
                if(pwd1 == pwd2){
                    $("#alert-success").show();
                    $("#alert-danger").hide();
                    $("#submit").removeAttr("disabled");
                }else{
                    $("#alert-success").hide();
                    $("#alert-danger").show();
                    $("#submit").attr("disabled", "disabled");
                }    
            } 
        });
    });
$(document).ready(function(){    
    $("#id-success").hide();
    $("#id-danger").hide();
    $("#id").blur(function(){
        var id = $("#id").val();
        console.log(id + ' 이메일 체크!!');
        $.post("idck.nhn",
        	    {
        	      id: id
        	    },
        	    function(data,status){
        	    	if (data.trim() == "ok") {
        	    		$("#id-success").hide();
        	    		$("#id-danger").show();
//         	    		alert("이메일이 있습니다");	
        	    	} else {
        	    		$("#id-danger").hide();
        	    		$("#id-success").show();
//         	    		alert("가입이 가능한 메일입니다.");	
        	    	}
        	      
       	});
    });
});
</script>
</body>
</html>