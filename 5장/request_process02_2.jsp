<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLDecoder"%>
<html lang="ko">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Action Tag</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String sd = request.getParameter("sd");
	%>
	<p>
		아 이 디 :
		<%=id%><br> 비 밀 번 호 :
		<%=password%><br> 이 름 :
		<%=name%><br> 학 번 :
		<%=sd%><br>
	<p>------------------------------------------------------------------------------------------------------------------------------------------------------------</p>

	<%
	java.util.Enumeration paramNames = request.getParameterNames();

	while (paramNames.hasMoreElements()) {
		String pName = (String) paramNames.nextElement();
		String pValue = request.getParameter(pName);

		out.print(pName + "=" + pValue);

		if (paramNames.hasMoreElements()) {
			out.print(", ");
		}
	}
	%>
	<div class="container">
		<div class="text-center">
			<hr>
			<a href="welcome.jsp"><button type="button"
					class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	</div>
	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>