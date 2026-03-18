<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Directives Tag</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>
<ol>
	
	<%@ page import="java.util.Date, java.lang.Math" %>
	<li class="fw-bold"> 현재 날짜 :  <%=new Date()%></li><br>
	<li class="fst-normal"> 5의 제곱 : <%= Math.pow(5,2) %></li><br>
	<li class="fw-light">Sin(30)의 값 : <%= Math.sin(Math.toRadians(30)) %></p></li><br>
	<li class="fst-normal"> Cos(0)의 값: <%= Math.cos(Math.toRadians(0)) %></li><br>
	<li class="fst-italic">절대값(-5) : <%= Math.abs(-5) %></p></li><br>
</ol>
<hr>
	<p class="text-center"><button type="button" class="btn btn-outline-primary" onclick="location.href='welcome.jsp'">홈 돌아가기</button></p>
<hr>
</body>
</html>
