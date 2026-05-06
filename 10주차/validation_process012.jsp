<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Validation</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	
	<div class="container mt-4">
	<table class="table table-bordered">
		<tbody>
			<tr>
				<th scope="row">아이디</th>
				<td>
					<%= request.getParameter("id")%>
				</td>
			</tr>
			<tr>
				<th scope="row">비밀번호</th>
				<td>
					<%= request.getParameter("passwd")%>
				</td>
			</tr>
			<tr>
				<th scope="row">제목</th>
				<td>
					<%=request.getParameter("title")%>
				</td>
			</tr>
		</tbody>
	</table>
	</div>
	
	<hr style="width: 80%; margin: auto;">
	<div class="text-center my-3">
		<a href="welcome.jsp" class="btn btn-outline-primary">홈 돌아가기</a>
	</div>
	<hr style="width: 80%; margin: auto;">
	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>