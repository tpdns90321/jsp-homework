<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GUGU3</title>
<style>
table {
	border: 1px solid;
	border-collapse: collapse;
}
tr, td {
	border: 1px solid;
	padding: 5px;
}
</style>
</head>
<body>
	<table>
	<% for (int i = 2; i < 10; i++) { %>
		<% if (i == 2 || i == 6)  { %> 
		<tr>
		<% } %>
			<td>
			<% for (int j = 1; j < 10; j++) { %>
				<%= i %> x <%= j %> = <%= i * j %><br />
			<% } %>
			</td>
		<% if (i == 5 ||  i == 9)  { %> 
		</tr>
		<% } %>
	<% } %>
	</table>
</body>
</html>