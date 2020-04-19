<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="form2.Student" %>
<!DOCTYPE html>
<% Student student = (Student)session.getAttribute("createStudent"); %>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록 성공</title>
<script src="https://kit.fontawesome.com/68abb170e0.js"
	crossorigin="anonymous"></script>
<style>
body {
	font-family: 굴림체;
	font-size: 10pt;
}

table, tr, td {
	border-collapse: collapse;
	border: 1px solid;
	width: 300px;
	padding: 5px;
}

td.data {
	width: 600px;
}

</style>
</head>
<body>
	<div>
		<h1>학생 등록 성공</h1>
		<table>
			<tr>
				<td>ID</td>
				<td class="data"><%= student.getId() %></td>
			</tr>
			<tr>
				<td>학번</td>
				<td class="data"><%= student.getStudentNumber() %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td class="data"><%= student.getName() %></td>
			</tr>
			<tr>
				<td>학과</td>
				<td class="data"><%= student.getDepartmentId() %></td>
			</tr>
			<tr>
				<td>학년</td>
				<td class="data"><%= student.getYear() %></td>
			</tr>
		</table>
	</div>
</body>
</html>