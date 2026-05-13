<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="isErrorPage2.jsp"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Exception</title>
</head>
<body>	
	<%
	request.setCharacterEncoding("UTF-8");

	String int1 = request.getParameter("int1");
	String int2 = request.getParameter("int2");
	
	int num1 = Integer.parseInt(int1);
    int num2 = Integer.parseInt(int2);
	%>
	
	<div class="container py-4">
    	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
     		<div class="container-fluid py-5">
        	<h1 class="display-5 fw-bold">전송 결과</h1> 
      		</div>
    	</div>
	</div>
	<div class="container">
		<p class="fs-4">숫자1 : <span class="badge text-bg-danger"><%= int1 %></span></p>
        <p class="fs-4">숫자2 : <span class="badge text-bg-danger"><%= int2 %></span></p>
   	 	<div class="text-center">
        	<hr>
        	<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
        	<hr>
   	 	</div>
	</div>	
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>