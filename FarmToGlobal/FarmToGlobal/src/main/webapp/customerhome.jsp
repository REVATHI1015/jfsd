<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page import="com.klef.jfsd.farmtoglobal.model.Customer" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>
<%@ include file="customernavbar.jsp" %>
    <% 
        // Retrieve the Customer object from the session
        Customer c = (Customer) session.getAttribute("Customer");
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
