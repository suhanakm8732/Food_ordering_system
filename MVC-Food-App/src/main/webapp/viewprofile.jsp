<%@page import="com.jsp.foodapp.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('images/adminlogin.jpeg');
            background-size: cover;
            background-position: center;
            background-color: rgba(255, 255, 255, 0.5); /* Adjust the opacity here */
        }

        form {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            width: 300px;
            max-width: 80%;
            
           
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
		
        a {
            display: inline-block;
            background-color: #4caf50;
            color: white;
            padding: 20px 40px; /* Adjusted padding */
            text-align: center;
            font-size: 16px;
            margin: 20px auto;
            width: 150px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
            
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <%  User user=(User)request.getAttribute("user"); %>
    <form >
        <div style="text-align: center; ">
            <h1>Profile</h1>
        </div>
        <div class="form-group">
            <label>ID:</label>
            <input type="text" class="form-control" value="<%= user.getId() %>" readonly>
        </div>

        <div class="form-group">
            <label>Name:</label>
            <input type="text" class="form-control" value="<%= user.getName() %>" readonly>
        </div>

        <div class="form-group">
            <label>Email:</label>
            <input type="text" class="form-control" value="<%= user.getEmail() %>" readonly>
        </div>

        <div class="form-group">
            <label>Password:</label>
            <input type="password" class="form-control" value="<%= user.getPassword() %>" readonly>
        </div>
		<div style="text-align: center;">
		<a href="editprofile" style="text-decoration: none">Edit</a>
		</div>
        
    </form>
</body>
</html>
