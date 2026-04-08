<%@ page contentType="text/html; charset=utf-8"%>
  <%@ page import="java.util.Enumeration"  %> 
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
	<title>Form Processing</title>
	
	<style>
    .table td, .table th {
        padding-top: 15px !important;   
        padding-bottom: 15px !important;
        vertical-align: middle;
    }
	</style>
	
</head>
<body>

    <%
        request.setCharacterEncoding("UTF-8");
        Enumeration<String> paramNames = request.getParameterNames();
        
        out.print("<table class='table table-striped'>");
        out.print("<thead>");
        out.print("<tr><th scope='col'>제목</th><th scope='col'>값</th></tr>");
        out.print("</thead>");
        out.print("<tbody>");

        while(paramNames.hasMoreElements()) {
            String name = paramNames.nextElement();
            String value = request.getParameter(name);

            // out 객체를 사용하여 HTML 한 줄을 통째로 출력
            out.print("<tr>");
            out.print("<th scope='row'>" + name + "</th>");
            out.print("<td>" + value + "</td>");
            out.print("</tr>");
        }
        out.print("</tbody>");
        out.print("</table>");
    %>


	<hr style="width: 90%; margin: 0 auto;"> <%-- 90%만 표현하고, 가운데 정렬.  --%>
	<p class="text-center my-3"> <%-- 버튼 상하좌우로 가운데 정렬 --%>
	<a href="welcome.jsp" class="btn btn-outline-primary link-underline-opacity-0">홈 돌아가기</a>
	<hr style="width: 90%; margin: 0 auto;"> <%-- 90%만 표현하고, 가운데 정렬.  --%>

	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>