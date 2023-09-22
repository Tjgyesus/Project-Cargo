<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/11/23
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <%@include file="cargo-header.html" %>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Display</title>
</head>
<body align = "center">

<div class="view">
<h1>Cargo Created</h1>
Load Id : ${cargo.load_id}<br>
Owner : ${cargo.name}<br>
Load Description : ${cargo.description}<br>
Weight : ${cargo.weight}<br>
Volume : ${cargo.volume}<br>
Pick-Up Date :
<jsp:useBean id="Date" class="java.util.Date" />
<fmt:formatDate type="date" value="${cargo.pickupDate}"/>
<br>
Delivery Date :
<jsp:useBean id="date" class="java.util.Date" />
<fmt:formatDate type="date" value="${cargo.deliveryDate}"/>
</div>
<br><br>
<%--<a href="/createCargo" type="submit">Create New Cargo</a>    <input action = "/createCargo"  value="Add Cargo">--%>
<form action="/createCargo"><button class="btn button">Add New Cargo</button></form>
<br><br>
<form action="/viewAll"> <button class="btn button">View All Cargo List</button></form>

</body>
</html>
