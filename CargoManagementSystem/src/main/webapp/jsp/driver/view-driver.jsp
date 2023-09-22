
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
<%@include file="driver-header.html" %>

<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Driver List View</title>

</head>
<body align="center">

<h1>Driver List Display</h1><br>
<table id="driverTab" class="table" align="center">
    <thead class="thead-dark">
    <tr>
       <th>Load Id</th>
        <th>Driver Name</th>
        <th>License Number</th>
        <th></th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${driver}" var="driver">
        <tr>
        <td>${driver.load_id}</td>
        <td>${driver.driver_name}</td>
        <td>${driver.driver_lic_num}</td>
        <td><a href="editDriver?id=${driver.load_id}" class="buttonED E">Edit</a> </td>
        <td><a href="deleteDriver?id=${driver.load_id}" class="buttonED D">Delete</a> </td>
    </tr>
    </c:forEach>
    </tbody>
</table>
<br><br>
<form action="/createDriver"> <button class="btn button">Add New Driver</button></form>
</body>
</html>