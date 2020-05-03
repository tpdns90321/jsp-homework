<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture4.*" %>
<%
String name = request.getParameter("name");
List<User> list = null;
if (name == null || name.equals("")) {
	name = "";
	list = UserDAO2.findAll();
} else {
	list = UserDAO2.findByName(name);
}
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 600px; margin: 50px auto; }
    thead th { background-color: #eee; }
    table{ border-collapse: collapse; width: 100%; }
    td, th { padding: 4px; border: 1px solid lightgray; }
    td:nth-child(4) { text-align: center; }
    input { padding: 5px; font-size: 10pt; }
    button { margin: 10px ; padding: 0.4em 2em; }
  </style>
</head>
<body>
<div class="container">

  <h1>사용자목록</h1>
  
  <form>
  	<input type="text" name="name" placeholder="검색조건" value="<%= name %>" />
  	<button type="submit">검색</button>
  </form>
  
  <table class="table table-bordered table-condensed">
      <thead>
          <tr>
              <th>사용자아이디</th>
              <th>이름</th>
              <th>이메일</th>
              <th>학과</th>
              <th>사용자유형</th>
          </tr>
      </thead>
      <tbody>
          <% for (User user : list) { %>
              <tr>
                  <td><%= user.getUserid() %></td>
                  <td><%= user.getName() %></td>
                  <td><%= user.getEmail() %></td>
                  <td><%= user.getDepartmentName() %></td>
                  <td><%= user.getUserType() %></td>
              </tr>
          <% } %>
      </tbody>
  </table>

</div>
</body>
</html>
