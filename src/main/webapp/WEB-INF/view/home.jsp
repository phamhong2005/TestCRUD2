<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/10/2023
  Time: 8:23 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>List Student</title>
</head>
<body>
<button><a href="/create" style="text-decoration-line: none">Thêm Mới Student</a></button>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Address</th>
        <th>Class</th>
        <th colspan="2">Action</th>
    </tr>

        <c:forEach var="item" items="${lits}">
            <tr>
                <td>${item.id}</td>
                <td>${item.name}</td>
                <td>${item.email}</td>
                <td>${item.address}</td>
                <td>${item.classroom}</td>
                <td>
                    <button><a href="/update&id=${item.id}">Update</a></button>
                </td>
                <td>
                    <button><a href="/delete&id=${item.id}">Delete</a></button>
                </td>
            </tr>

        </c:forEach>

</table>

</body>
</html>