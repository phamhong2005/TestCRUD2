<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/11/2023
  Time: 6:35 PM
  To change this template use File | Settings | File Templates.
--%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Update</title>
</head>
<body>
<form action="/update&id=${student.id}"method="post">
<%--        <input type="text"name="id"placeholder="ID"value="${students.id}">--%>
    <input type="text"name="name"placeholder="Name"value="${student.name}">
    <input type="text"name="email"placeholder="Email"value="${student.email}">
    <input type="text"name="address"placeholder="Address"value="${student.address}">
    <input type="text"name="classroom"placeholder="Class"value="${student.classroom}">
    <button>SubMit</button>
</form>
</body>
</html>