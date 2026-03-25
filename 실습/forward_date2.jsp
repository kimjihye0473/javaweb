<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Action Tag</title>
</head>
<body>
	<% 
		int num = Integer.parseInt(request.getParameter("num"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	
		for (int i = 1; i <= 9; i++) 			
			out.println(num +" * "+ i + " = " + num*i +
			" " + "<u>" + "<strong>" + num2 +" * "+ i +
			" = " + num2*i +"</u>"+"</strong>" + "<br>" +
			"-------------------------" + "<br>");
			
	%>
	<p>오늘의 날짜 및 시각
	<p><%=(new java.util.Date()).toLocaleString()%>
<div class="container">
		<div class="text-center">
			<hr>
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>