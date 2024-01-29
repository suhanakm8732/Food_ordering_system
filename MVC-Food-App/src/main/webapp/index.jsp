<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>CSE</title>
    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="styles.css"> <!-- Your custom styles -->

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
    </style>
</head>
<body>
    <div class="navbar">
        <div>
            <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i> Home</a>
            <a class="nav-link" href="about.jsp"><i class="fas fa-info-circle"></i> About</a>
            <a class="nav-link" href="services.jsp"><i class="fas fa-cogs"></i> Services</a>
            <a class="nav-link" href="contact.jsp"><i class="fas fa-envelope"></i> Contact</a>
        </div>
        <div>
            <a class="nav-link" href="adminloginform.jsp"><i class="fas fa-sign-in-alt"></i> Login</a>
        </div>
    </div>

   
</body>
</html>
