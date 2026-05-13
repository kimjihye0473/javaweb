<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true"%>

<html>
<head>
<title>error</title>
</head>
<body>
    <div class="container">	
		<h4 class="display-5 fw-bold text-center">오류 발생</h4> 
		<table class="table table-bordered">
    		<tr>
        		<td width = "20%"><b>Error:</b></td>
            	<td>${pageContext.exception}</td>
        	</tr>            
         	<tr>
            	<td><b>URI:</b></td>
            	<td>${pageContext.errorData.requestURI}</td>
         	</tr>            
       	  	<tr>
       			<td><b>Status code:</b></td>
      	 		<td>${pageContext.errorData.statusCode}</td>
       	 	</tr>  
       	  	<tr>
        		<td><b>toString:</b></td>
        		<td><%= exception.toString()%></td>
         	</tr>
         	<tr>
         		<td><b>getMessage:</b></td>
         		<td><%= exception.getMessage()%></td>
         	</tr>
</table>
</body>

	<hr style="width: 80%; margin: auto;">
	<div class="text-center my-3">
		<a href="welcome.jsp" class="btn btn-outline-primary">홈 돌아가기</a>
	</div>
	<hr style="width: 80%; margin: auto;">
	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
	
</html>