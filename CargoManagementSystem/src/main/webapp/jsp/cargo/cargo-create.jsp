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
<html>
<head>
    <%@include file="cargo-header.html" %>

    <title>Cargo</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link href="../css/styles.css" rel="stylesheet" media="all" />

        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Welcome</title>
    </head>

<body align="center" class="">



<%--<-Date Script->--%>
<script>
    $(function() {
        $.datepicker.setDefaults({
            onClose:function(date, inst){
                $("#datepicker").html(date);
            }
        });
        $( ".datepicker" ).datepicker();
    });
    <%--<-Date Script->--%>

</script>

<h1>Cargo Page</h1>
<%--@elvariable id="cargo" type="com.takeo.model.Cargo"--%>
<div class="input">
    <form:form action="cargo" modelAttribute="cargo" >
       <label> Cargo Owner :</label>
            <form:input path="name" placeholder = "Cargo Owner's Name"/><br><br>
     <label>  Description :</label> <form:input path="description" placeholder = "Describe what is in the load" /><br><br>

    <label>Weight :  </label>
            <form:input path="weight" placeholder = "KG"/><br><br>

        <label>Volume : </label> <form:input path="volume" placeholder = "Cubic feet"/><br><br>

        <label>Pick-Up Date :</label> <form:input type="text" class="datepicker"  path="pickupDate" placeholder = "MM/DD/YYYY" /><br><br>
        <label>Delivery Date :</label> <form:input type="text" class="datepicker" path="deliveryDate" placeholder = "MM/DD/YYYY"/><br><br>

        <button class="btn button">Create Cargo</button>
</form:form>
</div>
<br>
<form action="/viewAll"> <button class="btn button">View All Cargo List</button></form>

</body>
</html>
