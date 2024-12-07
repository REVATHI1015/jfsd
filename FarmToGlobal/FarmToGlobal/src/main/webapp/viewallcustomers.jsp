<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        body {
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background-color: #eaeaea;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        h3 {
            text-align: center;
            color: #4a4a4a;
            margin-bottom: 30px;
            font-size: 24px; /* Increase header font size */
        }
        table {
            border-collapse: collapse;
            width: 90%; /* Increase table width */
            margin: 0 auto;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            background-color: #ffffff;
            font-size: 18px; /* Increase table font size */
        }
        th, td {
            text-align: left;
            padding: 12px; /* Increase padding for cells */
        }
        tr:nth-child(even) {
            background-color: #f2f2f2; /* Even row color */
        }
        th {
            background-color: #04AA6D; /* Header background color */
            color: white; /* Header text color */
        }
    </style>
</head>

<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3><b>View All Customers</b></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Date of Birth</th>
            <th>Email</th>
            <th>Location</th>
            <th>Contact No</th>
        </tr>
 
        <c:forEach items="${customerlist}" var="customer">
            <tr>
                <td><c:out value="${customer.id}"/></td>
                <td><c:out value="${customer.name}"/></td>
                <td><c:out value="${customer.gender}"/></td>
                <td><c:out value="${customer.dateofbirth}"/></td>
                <td><c:out value="${customer.email}"/></td>
                <td><c:out value="${customer.location}"/></td>
                <td><c:out value="${customer.contact}"/></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
