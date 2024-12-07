<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.klef.jfsd.farmtoglobal.model.Farmer" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>
<%@ include file="farmernavbar.jsp" %>
    <% 
        // Retrieve the Customer object from the session
        Farmer c = (Farmer) session.getAttribute("Farmer");
        if (c != null) {
    %>
        <h1>Welcome, <%= c.getName() %>!</h1>
        <p>Home</p>
    <% 
        } else { 
    %>
        <h1>Welcome, Guest!</h1>
        <p>Please log in to access your account.</p>
    <% 
        } 
    %>
</body>
</html>
