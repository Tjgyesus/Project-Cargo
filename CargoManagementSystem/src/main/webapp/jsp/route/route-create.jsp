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
<%@include file="route-header.html" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Route </title>
</head>
<body align="center">


<h1>Route Page</h1>
<%--@elvariable id="route" type="com.takeo.model.Route"--%>

<form:form action="route" modelAttribute="route" align = "center">
    Load ID : <form:input path="load_id" placeholder = "Load Number"/><br><br>
    Pick-Up Address : <form:input path="pickupAddress" placeholder = "from..."/><br><br>
    Delivery Address :  <form:input path="deliveryAddress" placeholder = "going to..."/><br><br>
    Distance :  <form:input path="distanceMiles" placeholder = "miles"/><br><br>

    <button class="btn button">Create Route</button>

</form:form>
<br><br>
<form action="/viewAllRoute"> <button class="btn button">View All Route List</button></form>

</body>
</html>
