<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Food</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            padding: 10px;
        }

        .navbar div {
            display: flex;
        }

        .navbar a {
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }

        #buttons {
            text-align: center;
        }

        #buttons a {
            display: inline-block;
            background-color: #4caf50;
            color: white;
            padding: 10px 20px; /* Adjusted padding */
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 5px;
            width: 150px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }

        #buttons a:hover {
            background-color: #45a049;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            
            
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #4caf50;
            color: white;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div>
            <a href="index.jsp">Home</a>
            <a href="about.jsp">About</a>
            <a href="services.jsp">Services</a>
            <a href="contact.jsp">Contact</a>
        </div>
        <div>
            <a href="adminoptions.jsp">Logout</a>
        </div>
    </div>
    
    <div>
        <h1>${msg}</h1>
    </div>
    <div>
        <table class="table table-bordered" style="width: 70%">
            <thead class="thead-dark">
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>cost</th>
                    <th>Type</th>
                    <th>Add</th>
                </tr>
            </thead>
            <c:forEach var="product" items="${productlist}">
                <tr>
                    <td>${product.getId()}</td>
                    <td>${product.getName()}</td>
                    <td>${product.getCost()}</td>
                    <td>${product.getType()}</td>
                    <td>
                        <div id="buttons">
                            <a href="additem?id=${product.getId()}"><i class="fas fa-plus"></i> Add</a>
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <div id="buttons">
        <a href="savefoodorders"><i class="fas fa-check"></i> Confirm Order</a>
    </div>
</body>
</html>
