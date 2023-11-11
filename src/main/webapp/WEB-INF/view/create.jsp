<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/10/2023
  Time: 8:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Add Student</title>
</head>
<body>
<form action="/create"method="post">
  <input type="text"name="id"placeholder="ID">
  <input type="text"name="name"placeholder="Name">
  <input type="text"name="email"placeholder="Email">
  <input type="text"name="address"placeholder="Address">
  <input type="text"name="classroom"placeholder="Class">
  <button>Submit</button>
</form>
</body>
</html>