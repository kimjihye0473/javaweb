<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Form Processing Result</title>
    <link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>
    <%  
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        
        StringBuffer buffer = new StringBuffer();   
        
        buffer.append("<table class='table'>");
        buffer.append("<thead>");
        buffer.append("<tr><th scope='col'>제목</th><th scope='col'>값</th></tr>");
        buffer.append("</thead>");
        buffer.append("<tbody>");
        buffer.append("<tr><td><b>이름</b></td><td>" + name + "</td></tr>");
        buffer.append("<tr><td><b>주소</b></td><td>" + address + "</td></tr>");
        buffer.append("<tr><td><b>이메일</b></td><td>" + email + "</td></tr>");
        buffer.append("<tr><td><b>성별</b></td><td>" + gender + "</td></tr>");
        buffer.append("</tbody>");
        buffer.append("</table>");
    %>     

    <div class="container mt-5">
        <%= buffer.toString() %> 
        
        <div class="text-center mt-4">
            <hr>
            <a href="welcome.jsp" class="btn btn-outline-primary">홈 돌아가기</a>
            <hr>
        </div>
    </div>

    <script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>