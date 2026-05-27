<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.GregorianCalendar"%>
<html>
<head>
	<title>Cookie</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			cookie_id.setMaxAge(60*60);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);	
			
			Calendar calendar = new GregorianCalendar();
			int year = calendar.get(Calendar.YEAR);
			int month = calendar.get(Calendar.MONTH) + 1;
			int date = calendar.get(Calendar.DATE);
			int hour = calendar.get(Calendar.HOUR_OF_DAY);
			int minute = calendar.get(Calendar.MINUTE);
			%>
			
			<div class="container mt-4 text-center">
				<hr style="width:80%; margin:auto;">
				<br>
		
				<p>
					오늘은 <%=year%>-<%=month%>-<%=date%>일 입니다.<br>
					현재 시각은 <%=hour%>:<%=minute%> 분 입니다. <br>
					<span class="badge text-bg-success">
					<%=user_id%>
					</span>님 쿠키 설정이 성공했습니다.
				</p>
		
				<hr style="width:80%; margin:auto;">
				<br>
		
				<a href="welcome2.jsp" class="btn btn-outline-primary">다음 페이지로 이동</a>
				
			</div>
		<%
		} else {
		%>
		
		<br>
		<hr style="width:80%; margin:auto;">
		<br>
		
		<div class="text-center">
			<span class="badge text-bg-danger">아이디와 비밀번호를 확인해 주세요</span>
		</div>
		
		<br>
		<hr style="width:80%; margin:auto;">
		<br>
		
		<div class="text-center">
			<a href="cookie2.jsp" class="btn btn-outline-primary">처음으로 이동</a>
		</div>
		<%
			}
		%>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>