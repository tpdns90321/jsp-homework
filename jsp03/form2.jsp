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
		try {
			switch (Integer.parseInt(param)) {
			case 3:
				select = "three";
				break;
			case 2:
				select = "two";
				break;
			default:
			case 1:
				select = "one";
			}
		} catch(Exception e) {
		}
	%>

	<form method="GET">
		<div>
			<select name="select">
				<option value="1">one</option>
				<option value="2">two</option>
				<option value="3">three</option>
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