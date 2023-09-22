<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/11/23
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"
%>
<%@include file="truck-header.html" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Display Truck</title>
</head>
<body align="center">

<h1>Truck Page</h1>
Load Id : ${truck.load_id}<br>
Truck Number : ${truck.truckNum}<br>
Truck Make : ${truck.truckModel}
Model : ${truck.truckModelYear}<br>
License Plate Number: ${truck.truckLicPlate}<br>
<br><br><br>
<form class="link" action="/createTruck"><button class="btn button">Add New Truck</button></form>
</div>
<br><br>
    <form action="/viewAllTruck"> <button class="btn button">View All Truck List</button></form>



</body>
</html>
