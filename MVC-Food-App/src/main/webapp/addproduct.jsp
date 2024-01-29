<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome CSS -->
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
            background-color: #f0f0f0;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            width: 400px;
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
    <form:form action="saveproduct" modelAttribute="product" method="post">
        <div style="text-align: center;">
            <h1><i class="fas fa-plus"></i> Add Product</h1>
        </div>
        
        <div class="form-group">
            <label for="name">Enter Name:</label>
            <form:input path="name" class="form-control" />
        </div>

        <div class="form-group">
            <label for="type">Enter Type:</label>
            <form:input path="type" class="form-control" />
        </div>

        <div class="form-group">
            <label for="cost">Enter Cost:</label>
            <form:input path="cost" class="form-control" />
        </div>
	<div style="text-align: center;">
	<button type="submit" class="btn btn-success"><i class="fas fa-check"></i> Add Product</button>
	</div>
        
    </form:form>
</body>
</html>
