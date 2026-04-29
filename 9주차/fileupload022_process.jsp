<%@ page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%>
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
String path = "C:\\upload";

DiskFileUpload upload = new DiskFileUpload();

upload.setSizeMax(1000000);
upload.setSizeThreshold(4096);
upload.setRepositoryPath(path);

List items = upload.parseRequest(request);
Iterator params = items.iterator();






%>

<table class="table table-bordered">
    <tr>
        <th>파라미터 이름</th>
        <th>파라미터 값</th>
    </tr>
<% 
while (params.hasNext()) {
	FileItem item = (FileItem) params.next();

	if (item.isFormField()) {
		String name = item.getFieldName();
		String value = item.getString("utf-8");
		out.println("<tr><td>"+name+"</td><td>"+value + "</td></tr>");
	} else {
		String fileFieldName  = item.getFieldName();				
		String fileName = item.getName();
		String contentType = item.getContentType();

		fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
		long fileSize = item.getSize();

		File file = new File(path + "/" + fileName);
		item.write(file);


		out.println("<tr><td>요청 파라미터 이름  </td><td>" + fileFieldName  + "</td></tr>");
		out.println("<tr><td>저장 파일 이름  </td><td>" + fileName + "</td></tr>");
		out.println("<tr><td>파일 콘텐츠 유형  </td><td>" + contentType + "</td></tr>");
		out.println("<tr><td>파일 크기  </td><td>" + fileSize + "</td></tr>");
	}
}
%>
    
    

</table>

	<hr style="width: 90%; margin: 0 auto;"> <%-- 90%만 표현하고, 가운데 정렬.  --%>
	<p class="text-center my-3"> <%-- 버튼 상하좌우로 가운데 정렬 --%>
	<button type="button" class="btn btn-outline-primary"><a href="welcome.jsp" class="link-underline-light">홈 돌아가기</a></button> <%-- 버튼 만들기 --%>
	<hr style="width: 90%; margin: 0 auto;"> <%-- 90%만 표현하고, 가운데 정렬.  --%>


	<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
	<%-- 이 파일이 존재하기 때문에 부트스트랩 실행이 가능하다 --%>
</body>
</html>