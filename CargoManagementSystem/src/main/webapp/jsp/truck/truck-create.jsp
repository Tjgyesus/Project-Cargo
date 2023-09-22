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

    <title>Truck</title>
</head>
<body align="center">


<h1>Truck Page</h1>
<%--@elvariable id="truck" type="com.takeo.model.Truck"--%>
<form:form action="truck" modelAttribute="truck" align="center">
    Load ID : <form:input path="load_id" placeholder = "Load Number"/><br><br>
    Truck Number : <form:input path="truckNum" placeholder = "Truck Number"/><br><br>

    Truck Make :  <form:input path="truckModel" placeholder = "Make"/><br><br>

    Truck Model Year :  <form:input path="truckModelYear" placeholder = "Model Year YYYY"/><br><br>
   License Plate :  <form:input path="truckLicPlate" placeholder = "Plate Number"/><br><br>
    <button class="btn button">Create Truck</button>


</form:form>
<br><br>
<form action="/viewAllTruck"> <button class="btn button">View All Truck List</button></form>

</body>
</html>
