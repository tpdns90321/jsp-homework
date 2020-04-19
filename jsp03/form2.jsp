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
		String select = "one";
		String param = request.getParameter("select");
		if (param != null) {
			select = param;
		}
	%>

	<form method="GET">
		<div>
			<select name="select">
				<option value="one" <%= "one".equals(param) ? "selected" : "" %>>one</option>
				<option value="two" <%= "two".equals(param) ? "selected" : "" %>>two</option>
				<option value="three" <%= "three".equals(param) ? "selected" : "" %>>three</option>
			</select>
		</div>
		<div>
			<input type="text" value=<%= select %> />
		</div>
		<div>
			<button type="submit" value="ok">OK</button>
		</div>
	</form>
</body>
</html>