<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
	<%-- 부트스트랩 사용시 반드시 선언 --%>
	<title>File Upload</title>
</head>
<body>
<%
	MultipartRequest multi = new MultipartRequest(request, "C:\\upload", 5 * 1024 * 1024, "utf-8",
	new DefaultFileRenamePolicy());

	String nameParam = multi.getParameter("name");
	String subject = multi.getParameter("subject");
	String explanation = multi.getParameter("explanation");
	
	Enumeration files = multi.getFileNames();
	
	String name = (String) files.nextElement();
	String filename = multi.getFilesystemName(name);
	String original = multi.getOriginalFileName(name);
	String type = multi.getContentType(name);
	File file = multi.getFile(name);

%>

<table class="table table-bordered">
    <tr>
        <th>파라미터 이름</th>
        <th>파라미터 값</th>
    </tr>
    <tr>
        <td>address</td>
        <td><%= subject %></td>
    </tr>
    <tr>
        <td>name</td>
        <td><%= nameParam %></td>
    </tr>
    <tr>
        <td>comment</td>
        <td><%= explanation %></td>
    </tr>
    <tr>
        <td>요청 파라미터 이름</td>
        <td><%= filename %></td>
    </tr>
    <tr>
        <td>실제 파일 이름</td>
        <td><%= original %></td>
    </tr>
    <tr>
        <td>저장 파일 이름</td>
        <td><%= filename %></td>
    </tr>
    <tr>
        <td>파일 콘텐츠 유형</td>
        <td><%= type %></td>
    </tr>
    <tr>
        <td>파일 크기</td>
        <td><%= (file != null ? file.length() + " bytes" : "없음") %></td>
    </tr>
</table>

	<hr style="width: 90%; margin: 0 auto;"> <%-- 90%만 표현하고, 가운데 정렬.  --%>
	<p class="text-center my-3"> <%-- 버튼 상하좌우로 가운데 정렬 --%>
	<button type="button" class="btn btn-outline-primary"><a href="welcome.jsp" class="link-underline-light">홈 돌아가기</a></button> <%-- 버튼 만들기 --%>
	<hr style="width: 90%; margin: 0 auto;"> <%-- 90%만 표현하고, 가운데 정렬.  --%>


	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
	<%-- 이 파일이 존재하기 때문에 부트스트랩 실행이 가능하다 --%>
</body>
</html>