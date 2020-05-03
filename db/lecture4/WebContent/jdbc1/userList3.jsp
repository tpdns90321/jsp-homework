<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, lecture4.*" %>
<%
String id = request.getParameter("id");
User user = UserDAO3.findById(Integer.parseInt(id));
%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <style>
    div.container { width: 600px; margin: 50px auto; }
    table { border-collapse: collapse; width: 500px; }
    td { padding: 4px; border: 1px solid lightgray; }
    td:nth-child(1) { background-color: #eee; }
  </style>
</head>
<body>
<div class="container">

  <h1>사용자</h1>
  
  <table>
      <tbody>
          <tr>
              <td>ID</td>
              <td><%= user.getId() %></td>
          </tr>
          <tr>
              <td>이름</td>
              <td><%= user.getName() %></td>
          </tr>
          <tr>
              <td>학과ID</td>
              <td><%= user.getDepartmentId() %></td>
          </tr>
          <tr>
              <td>학과명</td>
              <td><%= user.getDepartmentName() %></td>
          </tr>
          <tr>
              <td>이메일</td>
              <td><%= user.getEmail() %></td>
          </tr>
          <tr>
              <td>사용자유형</td>
              <td><%= user.getUserType() %></td>
          </tr>
      </tbody>
  </table>

</div>
</body>
</html>
