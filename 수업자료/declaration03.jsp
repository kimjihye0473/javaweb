<html>
<head>
c
<title>Scripting Tag</title>
</head>
<body>
	<%!String makeItLower(String data) {
		return data.toLowerCase();
	}%>
	<%
		out.println(makeItLower("Hello java server pages"));
	%>
</body>
</html>