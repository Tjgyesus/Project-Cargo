<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: tsegaygebreyesus
  Date: 9/11/23
  Time: 2:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="driver-header.html" %>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Driver</title>
</head>
<body align="center">

<h1>Driver Page</h1>

<%--@elvariable id="driver" type="com.takeo"--%>
<form:form method="post" action="display" modelAttribute="driver" align = "center">
    Load Id : <form:input path="load_id" placeholder = "Load Number"/><br><br>
    Driver Name : <form:input path="driver_name" placeholder = "Full Name"/><br><br>
    License Number : <form:input path="driver_lic_num" placeholder = "License Number"/><br><br>

    <button class="btn button">Create Driver</button>



</form:form>
<br><br>

<form action="/viewAllDriver"> <button class="btn button">View All Driver List</button></form>


</body>
</html>
