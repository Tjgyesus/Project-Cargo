
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
<%--@elvariable id="employee" type="com.takeo.entity.Employee"--%>
<%@include file="cargo-header.html" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Cargo List View</title>

</head>
<body align="center">

<h1>Cargo List Display</h1><br>
<table id="cargoTab" class="table" align="center" style="font-size: 20px">
    <thead class="thead-dark">
    <tr>
       <th>Load Id</th>
        <th>Owner</th>
        <th>Description</th>
        <th> Weight</th>
        <th> Volume</th>
        <th>Pick-Up Date</th>
        <th> Delivery Date </th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${cargo}" var="cargo">
        <tr>
        <td>${cargo.load_id}</td>
        <td>${cargo.name}</td>
        <td>${cargo.description}</td>
            <td>${cargo.weight}</td>
            <td>${cargo.volume}</td>
            <td>
                <jsp:useBean id="Date" class="java.util.Date" />
                <fmt:formatDate type="date" value="${cargo.pickupDate}"  pattern="dd-MM-yyyy"/>
            </td>
            <td>
                <jsp:useBean id="date" class="java.util.Date" />
                <fmt:formatDate type="date" value="${cargo.deliveryDate}"  pattern="dd-MM-yyyy"/>
            </td>
        <td><a href="editCargo?id=${cargo.load_id}" class="buttonED E" >Edit</a> </td>
        <td><a href="deleteCargo?id=${cargo.load_id}" class="buttonED D">Delete</a> </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<br><br>
<form action="/createCargo"/><button class="btn button">Add New Cargo</button>
</body>
</html>