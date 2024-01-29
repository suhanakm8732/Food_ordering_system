<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CSE</title>

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

        div {
            text-align: center;
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
            margin-top: 20px; /* Adjusted margin */
        }

        #buttons a {
            display: inline-block;
            background-color: #28a745; /* bg-success */
            color: white;
            padding: 15px 30px; /* Adjusted padding */
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 20px;
            width: 150px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }

        #buttons a:hover {
            background-color: #218838; /* darker shade of green */
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
            <a href="index.jsp">Logout</a>
        </div>
    </div>

    <div id="buttons">
        <a href="adduser"><i class="fas fa-user-plus"></i> Add User</a>
        <a href="loginuserform.jsp"><i class="fas fa-sign-in-alt"></i> Login User</a>
        <a href="addproduct"><i class="fas fa-plus-square"></i> Add Product</a>
        <a href="viewallproducts"><i class="fas fa-list"></i> View All Product</a>
        <a href="viewallfoodorders"><i class="fas fa-list-alt"></i> View All Food Orders</a>
    </div>

    <div>
        <h1>${msg}</h1>
    </div>
</body>
</html>
