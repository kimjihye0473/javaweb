<%@ page contentType="text/html; charset=utf-8"%>
<%-- bootstrap 적용시 모바일 등 달라지는 디스플레이 화면크기에 따라 자동 조절한다. --%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<%-- 부르스트랩 사용시 반드시 선언 --%>
<title>Welcome</title>
</head>
<body>
<div class="container py-4">	
    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold text-center">연습문제</h1>      
      </div>
    </div>

	<div class="text-center">
		<h3>
			<a href="fileupload01.jsp" class="link-underline-light">파일 업로드</a>&nbsp;&nbsp; : &nbsp;&nbsp;<a href="fileupload012.jsp" class="link-underline-light">파일 업로드 수정</a>
		</h3>
		<hr>
		<h3>
			<a href="include.jsp" class="link-underline-light">--</a>&nbsp;&nbsp; : &nbsp;&nbsp;<a href="include2.jsp" class="link-underline-light">--</a>
		</h3>
		<hr>
		<h3>
			<a href="UseBean2.jsp" class="link-underline-light">--</a>&nbsp;&nbsp; : &nbsp;&nbsp;<a href="expression2.jsp" class="link-underline-light">--</a>
		</h3>
		<hr>
		<h3>
			<a href="script3.jsp" class="link-underline-light">--</a>
		</h3>
		<hr>
		<h3>
			<a href="declaration3.jsp" class="link-underline-light">--</a>
		</h3>
		<hr>
		<h3>
			<a href="expression3.jsp" class="link-underline-light">--</a>
		</h3>
		<hr>
	</div>
	<button type="button" class="btn btn-primary">Primary</button>
	<div class="alert alert-danger" role="alert">
  A simple danger alert—check it out!
</div>
<h2>Example heading <span class="badge text-bg-secondary">New</span></h2>
</div>
<%-- 위와 같은 예시의 태그 활용하고 싶으면 bootstrap 사이트에 들어가서 기본 소스를 따오기 --%>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
<%-- 이 파일이 존재하기 때문에 부트스트랩 실행이 가능하다 --%>
</body>
</html>