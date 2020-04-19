<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="form2.Student"%>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String errorMessage = null;
	int id = 0;
	int department = 0;
	int year = 0;

	String studentNumber = "";
	String name = "";
	String id_param = "";
	String department_param = "";
	String year_param = "";

	if (request.getMethod().equals("POST")) {
		id_param = request.getParameter("id");
		department_param = request.getParameter("department");
		year_param = request.getParameter("year");

		studentNumber = request.getParameter("studentNumber");
		name = request.getParameter("name");

		if (id_param.length() == 0) {
			errorMessage = "ID가 비워져있습니다.";
		} else if (studentNumber.length() == 0) {
			errorMessage = "학번이 비워져있습니다.";
		} else if (name.length() == 0) {
			errorMessage = "이름이 비워져있습니다.";
		} else if (year_param.length() == 0) {
			errorMessage = "학년이 비워져있습니다.";
		} else {
			try {
				id = Integer.parseInt(id_param);
				department = Integer.parseInt(department_param);
				year = Integer.parseInt(year_param);

				session.setAttribute("createStudent", new Student(id, studentNumber, name, department, year));
				response.sendRedirect("/form2/studentCreate_success.jsp");
			} catch (Exception E) {
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생 등록</title>
<script src="https://kit.fontawesome.com/68abb170e0.js"
	crossorigin="anonymous"></script>
<style>
body {
	font-family: 굴림체;
	font-size: 10pt;
}

div.container {
	width: 400px;
	margin: 20px auto;
}

form div {
	margin-bottom: 20px;
}

label {
	display: block;
}

input.text {
	width: 200px;
	padding: 5px;
}

select {
	width: 150px;
	padding: 5px;
}

.btn {
	padding: 0.7em 2em;
	border: 1px solid #aaa;
	border-radius: 4px;
	background: linear-gradient(#fff, #ddd);
	color: black;
	font-family: 굴림체;
	font-size: 10pt;
	line-height: 1em;
	text-decoration: none;
	cursor: pointer;
	display: inline-block;
}

.btn:active {
	-ms-transform: translateY(2px);
	-webkit-transform: translateY(2px);
	transform: translateY(2px);
	background: #ccc;
}

hr {
	margin-top: 80px;
}

div.info {
	margin: 10px;
	padding: 10px 20px;
	background-color: #dff;
	border: 1px solid #8ff;
}

div.error {
	margin: 10px;
	padding: 10px 20px;
	background-color: #fdd;
	border: 1px solid #faa;
}
</style>

</head>
<body>
	<div class="container">
		<form method="POST">
			<h1>학생 등록</h1>
			<div>
				<label>ID</label> <input type="text" name="id" value="0" />
			</div>
			<div>
				<label>학번</label> <input type="text" name="studentNumber" />
			</div>
			<div>
				<label>이름</label> <input type="text" name="name" />
			</div>
			<div>
				<label>학과</label> <select class="form-control" name="department">
					<option value="1">소프트웨어공학과</option>
					<option value="2">컴퓨터공학과</option>
					<option value="3">정보통신공학과</option>
					<option value="4">글로컬IT공학과</option>
				</select>
			</div>
			<div>
				<label>학년</label> <input type="text" name="year">
			</div>
			<button class="btn">등록</button>
			<%
				if (errorMessage != null) {
			%>
			<div class="error">
				<%=errorMessage%>
			</div>
			<%
				}
			%>
		</form>
	</div>
</body>
</html>