<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Action Tag</title>
</head>
<body>
	<div class="text-bg-primary p-3">구구단 출력하기</div>	
	
	<jsp:include page="include_date2.jsp" flush="true" >	
		<jsp:param name="num" value="2" />
		<jsp:param name="num2" value="5" />
	</jsp:include>	
</body>
</html>
