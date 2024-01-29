<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add User</title>
    
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
            background-image: url('images/your_background_image.jpeg');
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

        input[type="submit"] {
            background-color: #28a745; /* bg-success */
            color: white;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #218838; /* darker shade of green */
        }
    </style>
</head>
<body>
    <form:form action="saveuser" modelAttribute="user">
        <div style="text-align: center;">
            <h1><i class="fas fa-user-plus"></i> Add User</h1>
        </div>
        
        <div class="form-group">
            <label for="name"><i class="fas fa-user"></i> Enter Name:</label>
            <form:input path="name" class="form-control" />
        </div>

        <div class="form-group">
            <label for="email"><i class="fas fa-envelope"></i> Enter Email:</label>
            <form:input path="email" class="form-control" />
        </div>

        <div class="form-group">
            <label for="password"><i class="fas fa-lock"></i> Enter Password:</label>
            <form:input path="password" class="form-control" />
        </div>

        <button type="submit" class="btn btn-success btn-block"><i class="fas fa-plus"></i> Add User</button>
    </form:form>
</body>
</html>
