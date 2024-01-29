<%@page import="com.jsp.foodapp.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <%  User user=(User)request.getAttribute("user"); %>

    <form:form action="updateprofile" modelAttribute="user" method="post">
        <div class="form-group">
            <label for="id">ID:</label>
            <form:input path="id" id="id" class="form-control" readonly="true" />
        </div>
        <div class="form-group">
            <label for="name">Enter Name:</label>
            <form:input path="name" id="name" class="form-control" value="${user.name}" />
        </div>
        <div class="form-group">
            <label for="email">Enter Email:</label>
            <form:input path="email" id="email" class="form-control" value="${user.email}" />
        </div>
        <div class="form-group">
            <label for="password">Enter Password:</label>
            <form:input path="password" id="password" class="form-control" value="${user.password}" />
        </div>
        <input type="submit" class="btn btn-success" value="Update Profile">
    </form:form>
</body>
</html>
