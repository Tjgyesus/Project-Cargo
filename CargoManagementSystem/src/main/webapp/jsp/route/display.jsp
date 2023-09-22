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

    <title>Display Route</title>
</head>
<body align="center">

<h1>Route Page</h1>
Load Id : ${route.load_id}<br>
Pick-Up Address : ${route.pickupAddress}<br>
Delivery Address : ${route.deliveryAddress}<br>
Distance : ${route.distanceMiles}<br>
<br><br><br>
<form action="/createRoute"><button class="btn button">Add New Route</button> </form>
<br><br>
<form action="/viewAllRoute"> <button class="btn button">View All Route List</button></form>

</body>
</html>
