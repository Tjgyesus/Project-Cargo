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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Truck Edit</title>
</head>

<body align = "center">

<script>
    $(function() {
        $.datepicker.setDefaults({
            onClose:function(date, inst){
                $("#datepicker").html(date);
            }
        });
        $( ".datepicker" ).datepicker();
    });
</script>

<h1>Truck Edit</h1>
    <%--@elvariable id="truck" type="com.takeo.model.Truck"--%>
    <form:form action="updateTruck" modelAttribute="truck" align="center">
        <form:hidden path="load_id"/>
        Truck Number : <form:input path="truckNum"/><br><br>
        Truck Make : <form:input path="truckModel"/><br><br>
        Truck Model Year : <form:input path="truckModelYear"/><br><br>
        License Plate  : <form:input path="truckLicPlate"/><br><br>
        <div class="link" >
            <form action="/createTruck"/><button class="btn button">Edit Truck</button>
        </div>


</form:form>
<br><br>
<form action="/viewAllTruck"> <button class="btn button">View All Truck List</button></form>

</body>
</html>
