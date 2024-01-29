<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product List</title>

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

        table {
            margin-top: 20px;
            width: 80%;
            border-collapse: collapse;
            margin-bottom: 20px;
            
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 2px solid black;
        }

        th {
            background-color: #f2f2f2;
        }

        a {
            text-decoration: none;
            display: inline-block;
            padding: 8px 16px;
            margin: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #4caf50;
            color: white;
            transition: background-color 0.3s;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
		<div style="text-align: center;">
            <h1>All Products</h1>
        </div>
    <table align="center" cellpadding="20px" border="1">
        <thead>
            <th>Id</th>
            <th>Name</th>
            <th>Type</th>
            <th>Cost</th>
            <th>Update</th>
            <th>Delete</th>
        </thead>
        <c:forEach var="product" items="${productlist}">
            <tr>
                <td>${product.getId()}</td>
                <td>${product.getName()}</td>
                <td>${product.getType()}</td>
                <td>${product.getCost()}</td>
                <td><a href="update?id=${product.getId()}"><i class="fas fa-pencil-alt"></i> Update</a></td>
                <td><a href="delete?id=${product.getId()}"><i class="fas fa-trash-alt"></i> Delete</a></td>
            </tr>
        </c:forEach>
    </table>

    
</body>
</html>
