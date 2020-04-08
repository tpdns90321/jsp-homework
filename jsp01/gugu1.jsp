<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GUGU1</title>
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
	<%
		for (int i = 1; i < 10; i++) {
			out.println("<tr>");
			for (int j = 2; j < 10; j++) {
				out.println(
					"<td>" + j + " x " + i + " = " + (i * j) + "</td>"
				);
			}
			out.println("</tr>");
		}
	%>
	</table>
</body>
</html>