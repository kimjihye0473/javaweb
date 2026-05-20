<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>Session</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>
	<%
	if (session.getAttribute("userID") == null) {
		response.sendRedirect("session_out.jsp");
	}

	Enumeration names = session.getAttributeNames();
	int i = 1;
	%>

	<div class="container mt-4">
		<hr>

		<%
		while (names.hasMoreElements()) {
			String name = (String) names.nextElement();
			String value = (String) session.getAttribute(name);
		%>

		<div class="mb-2">
			<div>
				설정된 세션의 속성 이름 [<%=i%>] :
				<span class="badge text-bg-primary"><%=name%></span>
			</div>
			<div>
				설정된 세션의 속성 값 [<%=i%>] :
				<span class="badge text-bg-success"><%=value%></span>
			</div>
		</div>

		<%
			i++;
		}
		%>

		<br>

		<h4>
			<span class="badge text-bg-success"><%=session.getAttribute("userID")%></span>
			님 반갑습니다.
		</h4>

		<hr>

		<a href="session_out2.jsp" class="btn btn-outline-primary">로그아웃</a>
	</div>

	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>