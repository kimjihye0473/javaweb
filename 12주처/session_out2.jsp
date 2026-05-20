<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>Session</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-4">

	<h5>세션 삭제하기 전</h5>

	<%
		Enumeration names = session.getAttributeNames();

		int i = 1;

		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			String value = (String) session.getAttribute(name);
	%>
			<p>
				설정된 세션의 속성 이름 [<%=i%>] :
				<span class="badge text-bg-primary"><%=name%></span>
				<br>
				설정된 세션의 속성 값 [<%=i%>] :
				<span class="badge text-bg-success"><%=value%></span>
			</p>
	<%
			i++;
		}
		session.invalidate(); // 싹 다 삭제
	%>

	<br>
	<h5>세션 삭제한 후</h5>
	
	<% 
		if(request.isRequestedSessionIdValid()==true){
	%>
	<span class="badge text-bg-primary">세션이 유효합니다.</span>
	<% 
	} else {
	%>
	<span class="badge text-bg-primary">세션이 유효하지 않습니다.</span>
	<% } %>

	<br><br>

	<hr style="width:100%; margin:auto;">

	<div class="text-end my-3" style="margin-right:20%;">
		<a href="welcome.jsp" class="btn btn-outline-primary">홈 돌아가기</a>
	</div>

	<hr style="width:100%; margin:auto;">

</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>