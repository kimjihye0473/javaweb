<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Scripting tag</title>
</head>
<body>
	<%
		for (int i = 0; i <= 10; i++) {
			if (i % 2 == 0)
				out.println(i + "짝수<br>");
		}else {
			out.println(i + "홀수<br>");
		}
	}
	%>
</body>
</html>