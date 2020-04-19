<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<%
		int num = 0;
		String param = request.getParameter("number");
		if (param != null) {
			num = Integer.parseInt(param) + 1;
		}
	%>

	<form method="GET">
		<div>
			<input type="text" name="number" value=<%= num %> />
			<button type="submit" value="ok">++</button>
		</div>
	</form>
</body>
</html>