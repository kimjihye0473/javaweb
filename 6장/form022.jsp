<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
	<title>Form Processing</title>
</head>
<body>
	<div class=container>
		<form action="form022_process.jsp" name="form" method="post">
		
			<div class="row mb-3">
   				<label for="inputName1" class="col-sm-2 col-form-label">이름</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="inputName1" name="name">
    			</div>
    		</div>
    		
    		<div class="row mb-3">
   				<label for="inputAdress1" class="col-sm-2 col-form-label">주소</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="inputAdress1" name="address">	
    			</div>
    		</div>
    		
    		<div class="row mb-3">
   				<label for="inputEmail1" class="col-sm-2 col-form-label">이메일</label>
    			<div class="col-sm-10">
      				<input type="text" class="form-control" id="inputEmail1" name="email">
    			</div>
    		</div>
    		
    		<div>
    			<label class="col-sm-2 col-form-label">성별</label>
    			<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="성별" id="inlineRadio1" value="남성">
  					<label class="form-check-label" for="inlineRadio1">남성</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="성별" id="inlineRadio1" value="여성">
  					<label class="form-check-label" for="inlineRadio1">여성</label>
				</div>
			</div>
			
			<br>
			
			<div>
			<button type="submit" class="btn btn-primary">전송</button>
			</div>
	</form>
	</div>
	
	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
<html>