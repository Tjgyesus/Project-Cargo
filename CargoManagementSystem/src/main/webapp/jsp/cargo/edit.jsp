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
<%@include file="cargo-header.html" %>

<html>
<head>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />


    <title>Cargo Edit</title>
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

<h1>Cargo Edit</h1>
<%--@elvariable id="cargo" type="com.takeo.model.Cargo"--%>

    <form:form action="update" modelAttribute="cargo" align="center">
        <form:hidden path="load_id"/>
   Name : <form:input path="name"/><br><br>
    Description: <form:input path="description"/><br><br>

    Weight :  <form:input path="weight"/><br><br>

    Volume :  <form:input path="volume"/><br><br>
    Pick-Up Date : <form:input type="text" class="datepicker" path="pickupDate"/><br><br>
    Delivery Date :  <form:input type="text" class="datepicker" path="deliveryDate"/><br><br>

        <button class="btn button">Edit Cargo</button>

</form:form>
<br><br>
<form action="/viewAll"/> <button class="btn button">View All Cargo List</button></form>

</body>
</html>
