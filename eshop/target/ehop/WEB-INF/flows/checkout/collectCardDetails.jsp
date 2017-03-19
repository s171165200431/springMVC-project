<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Card Address:</h3>
        <div class="form-group">
<form:label path="firstname">FIRST NAME</form:label>
<form:input path="firstname"></form:input>
</div>

<div class="form-group">
<form:label path="lastname">LAST NAME</form:label>
<form:input path="lastname"></form:input>
</div>
        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

         <button class="btn btn-default" name="_eventId_backTocollectCardDetails">Back</button>
        
        <input type="submit" value="Next" class="btn btn-default" name="_eventId_cardDetailCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>
</body>
</html>