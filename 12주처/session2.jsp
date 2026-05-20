<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Session</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>
<div class="container py-4">
	<form action="session_process2.jsp" method="POST">
		<div class="row mb-3">
		    <label for="inputEmail3" class="col-sm-2 col-form-label">아이디</label>
		    <div class="col-sm-5">
		      <input type="text" class="form-control" name="id">
		    </div>
		</div>
		<div class="row mb-3">
		    <label for="inputPassword3" class="col-sm-2 col-form-label">비밀번호</label>
		    <div class="col-sm-5">
		      <input type="password" class="form-control" name="passwd">
		    </div>
		</div>
	
		<p>	<button type="submit" class="btn btn-primary">전송</button>
	</form>
</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>