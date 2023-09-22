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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Route Edit</title>
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

<h1>Route Edit</h1>
<%--@elvariable id="route" type="com.takeo.model.Route"--%>

    <form:form action="updateRoute" modelAttribute="route" align="center">
        <form:hidden path="load_id"/>
        Pick-Up Address : <form:input path="pickupAddress" placeholder = "from..."/><br><br>
        Delivery Address : <form:input path="deliveryAddress" placeholder = "going to..."/><br><br>
        Distance :  <form:input path="distanceMiles" placeholder = "miles"/><br><br>

        <button class="btn button">Edit Route</button>

</form:form>
<br><br>
<form action="/viewAllRoute"/> <button class="btn button">View All Route List</button></form>

</body>
</html>
