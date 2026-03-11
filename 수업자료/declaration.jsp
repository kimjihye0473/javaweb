<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Scripting Tag</title>
</head>
<body>
	<%!
	String str = "Hello, Java Server Pages,<br> kongwon University";

	public String getString() {		
		return str;
	}
	%>
	<%
		out.println(getString());		
	%>
	<hr>
	<p class="text-center">
	<button type="button" class="btn btn-outline-primary">홈 돌아가기</button>
	</p>
	<hr>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>