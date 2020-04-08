<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GUGU2</title>
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
		<tr>
			<% for (int i = 2; i < 10; i++) { %>
				<td>
					<% for (int j = 1; j < 10; j++) { %>
						<%= i %> x <%= j %> = <%= i * j %><br />
					<% } %>
				</td>
			<% } %>
		</tr>
	</table>
</body>
</html>