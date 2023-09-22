
<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/12/23
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--@elvariable id="route" type="com.takeo.model.Route"--%>
<%@include file="route-header.html" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Route List View</title>

</head>
<body align="center">

<h1>Route List Display</h1><br>
<table id="routeTab" class="table" align="center" style="font-size: 20px">
    <thead class="thead-dark">
    <tr>
       <th>Load Id</th>
        <th>Pick-Up Address</th>
        <th>Delivery Address</th>
        <th> Distance</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${route}" var="route">
        <tr>
        <td>${route.load_id}</td>
        <td>${route.pickupAddress}</td>
        <td>${route.deliveryAddress}</td>
        <td>${route.distanceMiles}miles</td>

        <td><a href="editRoute?id=${route.load_id}" class="buttonED E">Edit</a> </td>
        <td><a href="deleteRoute?id=${route.load_id}" class="buttonED D">Delete</a> </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<br><br>
<form action="/createRoute"/><button class="btn button">Add New Route</button>
</body>
</html>