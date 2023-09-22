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
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src=https://code.jquery.com/jquery-1.12.4.js></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../css/styles.css" rel="stylesheet" media="all" />

    <title>Driver Edit</title>
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

<h1>Driver Edit</h1>
<%--@elvariable id="cargo" type="com.takeo.model.Cargo"--%>

    <%--@elvariable id="driver" type="com.takeo.model.Driver"--%>
    <form:form action="updateDriver" modelAttribute="driver" align="center">
        <form:hidden path="load_id"/>
   Driver's Name : <form:input path="driver_name"/><br><br>
   License Number : <form:input path="driver_lic_num"/><br><br>

        <button class="btn button">Edit Drive</button>

</form:form>
<br><br>
<form action="/viewAllDriver"> <button class="btn button">View All Drivers</button></form>

</body>
</html>
