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
<%@include file="driver-header.html" %>

<html>
<head>
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Display Driver</title>
</head>
<body align="center">

<h1>Driver Page</h1>
Load Id : ${driver.load_id}<br>
Driver Name: ${driver.driver_name}<br>
Driver License Number: ${driver.driver_lic_num}<br>
<br><br><br>
<form action="/createDriver">    <button class="btn button">Create New Driver</button>
</form>
<br><br>

<form action="/viewAllDriver"> <button class="btn button">View All Driver List</button></form>

</body>
</html>
