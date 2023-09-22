
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
<%--@elvariable id="truck" type="com.takeo.model.Truck"--%>
<%@include file="truck-header.html" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Truck List View</title>

</head>
<body align="center">

<script>

</script>
<h1>Truck List Display</h1><br>
<table id="truckTab" class="table" align="center" style="font-size: 20px">
    <thead class="thead-dark">
    <tr>
       <th>Load Id</th>
        <th>Truck Number</th>
        <th>Truck Make</th>
        <th> Truck Model Year</th>
        <th> License Plate</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${truck}" var="truck">
        <tr>
        <td>${truck.load_id}</td>
        <td>${truck.truckNum}</td>
        <td>${truck.truckModel}</td>
            <td>${truck.truckModelYear}</td>
            <td>${truck.truckLicPlate}</td>
        <td><a href="editTruck?id=${truck.load_id}" class="buttonED E"
              >Edit</a> </td>
        <td><a href="deleteTruck?id=${truck.load_id}"  class="buttonED D">Delete</a> </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<br><br>
<form action="/createTruck"/><button class="btn button">Add New Truck</button>
<br><br>



</body>
</html>