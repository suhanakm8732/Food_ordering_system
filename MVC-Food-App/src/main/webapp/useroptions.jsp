<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.jsp.foodapp.entities.User"%>
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
            background-color: #f0f0f0;
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
            margin-top: 50px;
        }

        #buttons a {
            display: inline-block;
            background-color: #28a745; /* bg-success */
            color: white;
            padding: 10px 20px; /* Adjusted padding */
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            margin: 10px;
            width: 250px;
            cursor: pointer;
            border: none;
            border-radius: 5px;
        }

        #buttons a:hover {
            background-color: #218838; /* darker shade of green */
        }

        #msg {
            text-align: center;
            margin-top: 20px;
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
    <div id="buttons">
        <a href="addfoodorder"><i class="fas fa-utensils"></i> Order Food</a>
        <a href="viewfoodordersbyuser"><i class="fas fa-list-alt"></i> View All Food Orders</a>
        <a href="viewprofile"><i class="fas fa-user"></i> View Profile</a>
    </div>
    <div id="msg">
        <h1>${msg}</h1>
    </div>
</body>
</html>
