<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Food Orders</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4caf50;
            color: white;
        }

        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <table class="table table-striped table-bordered" style="width: 75%">
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Mobile no</th>
                <th>Total cost</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="product" items="${productlist}">
                <tr>
                    <td>${product.getId() }</td>
                    <td>${product.getName() }</td>
                    <td>${product.getMobilenumber() }</td>
                    <td>${product.getTotalcost() }</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
