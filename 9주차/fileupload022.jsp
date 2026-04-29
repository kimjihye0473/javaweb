<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
	<%-- 부트스트랩 사용시 반드시 선언 --%>
<title>File Upload</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="fileupload022_process.jsp">
		 <div class="row mb-3">
    		<label for="inputname" class="col-sm-2 col-form-label">이름</label>
    		<div class="col-sm-10">
      			<input type="text" name = "name" class="form-control" id="inputname">
    		</div>
 		 </div>
 		 
 		 <div class="row mb-3">
    		<label for="inputsubject" class="col-sm-2 col-form-label">주소</label>
    		<div class="col-sm-10">
      			<input type="text" name = "subject" class="form-control" id="inputsubject">
    		</div>
 		 </div>
 		 
 		 <div class="row mb-3">
    		<label for="inputexplanation" class="col-sm-2 col-form-label">설명</label>
    		<div class="col-sm-10">
    		<textarea class="form-control" placeholder="가입인사를 입력해주세요" 
    		id="floatingTextarea" type="text" name = "explanation"></textarea>
    		</div>
 		 </div>
 		 
 		 <div class="input-group mb-3">
 		 	<label for="inputexplanation" class="col-sm-2 col-form-label">파일</label>
 		 	<input type="file" name="filename" class="form-control" id="inputGroupFile02">
 		 	<label class="input-group-text" for="inputGroupFile02">Upload</label>
 		 </div>
 		 <div class="d-flex">
 		 	<button type="submit" class="btn btn-primary ms-auto" value="파일 올리기">파일 올리기</button>
 		 </div>
 		 	
	</form>	
		
	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
	<%-- 이 파일이 존재하기 때문에 부트스트랩 실행이 가능하다 --%>
</body>
</html>