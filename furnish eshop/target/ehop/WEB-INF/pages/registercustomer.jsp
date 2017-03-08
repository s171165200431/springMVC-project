<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- js -->

<script src="/resources/js/jquery.min.js"></script>
<!-- //js -->
<!-- cart -->
<script src="/resources/js/simpleCart.min.js"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="/resources/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="/resources/css/jquery.countdown.css" />
<!-- //timer -->
<!-- animation-effect -->
<link href="/resources/css/animate.min.css" rel="stylesheet"> 
<script src="/resources/js/wow.min.js"></script>
<script>
 new WOW().init();
</script>
<script>
function FillBilling(f) {
  if(f.billingtoo.checked == true) {
    f.billingApartmentNumber.value = f.shippingApartmentNumber.value;
    f.billingStreetName.value = f.shippingStreetName.value;
	f.billingCity.value = f.shippingCity.value;
	f.billingState.value = f.shippingState.value;
	f.billingCountry.value = f.shippingCountry.value;
	f.billingZipcode.value = f.shippingZipcode.value;
  }
  
}
</script>
<title>Insert title here</title>
</head>
<body>
<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Register Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->
	<div class="register">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Register Here</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">
			<div class="login-form-grids">
				<h5 class="animated wow slideInUp" data-wow-delay=".5s">profile information</h5>
				
				<c:url var="url" value="/all/registercustomer"></c:url>
				
				
			  	<form:form action="${url }" commandName="customer">

<div class="form-group">
<form:label path="firstname">FIRST NAME</form:label>
<form:input path="firstname"></form:input>
</div>

<div class="form-group">
<form:label path="lastname">LAST NAME</form:label>
<form:input path="lastname"></form:input>
</div>
<div class="form-group">
<form:label path="email">EMAIL</form:label>
<form:input path="email"></form:input>
</div>
<div class="form-group">
<form:label path="phonenumber">PHONE NUMBER</form:label>
<form:input path="phonenumber"></form:input>
</div>
<div class="form-group">
<form:label path="users.username">USERNAME</form:label>
<form:input path="users.username"></form:input>
${duplicateUsername}
</div>
<div class="form-group">
<form:label path="users.password">PASSWORD</form:label>
<form:input path="users.password" type="password"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.apartmentnumber">APARTMENT NUMBER</form:label>
<form:input path="billingAddress.apartmentnumber"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.streetname">STREET NAME</form:label>
<form:input path="billingAddress.streetname"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.city">CITY</form:label>
<form:input path="billingAddress.city"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.state">STATE</form:label>
<form:input path="billingAddress.state"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.country">COUNTRY</form:label>
<form:input path="billingAddress.country"></form:input>
</div>
<div class="form-group">
<form:label path="billingAddress.zipcode">ZIPCODE</form:label>
<form:input path="billingAddress.zipcode"></form:input>
</div>

<div class="form-group">
<form:label path="shippingAddress.apartmentnumber">APARTMENT NUMBER</form:label>
<form:input path="shippingAddress.apartmentnumber"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.streetname">STREET NAME</form:label>
<form:input path="shippingAddress.streetname"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.city">CITY</form:label>
<form:input path="shippingAddress.city"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.state">STATE</form:label>
<form:input path="shippingAddress.state"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.country">COUNTRY</form:label>
<form:input path="shippingAddress.country"></form:input>
</div>
<div class="form-group">
<form:label path="shippingAddress.zipcode">ZIPCODE</form:label>
<form:input path="shippingAddress.zipcode"></form:input>
</div>
<input type="submit" value="register">
</form:form>

</div>

</div>
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			<!-- 	  <form class="animated wow slideInUp" data-wow-delay=".5s" action="${url}" commandName="customer">
					<input type="text" placeholder="First Name..." path="firstname"required=" " >
					<input type="text" placeholder="Last Name..." path="lastname" required=" " >
					<input type="text" placeholder="phoneNumber..."path="phonenumber" required=" " >
					<input type="email" placeholder="Email Address.." path="email" required=" " >
		
					<!--  <input type="text" placeholder="Last Name..." required=" " >--
				</form>
				<div class="register-check-box animated wow slideInUp" data-wow-delay=".5s">
					<div class="check">
						<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>Subscribe to Newsletter</label>
					</div>
				</div>
				<h6 class="animated wow slideInUp" data-wow-delay=".5s">Login information</h6>
				<form class="animated wow slideInUp" data-wow-delay=".5s" path="user" method="post">
					<input type="text" placeholder="UserName" path="users.username"required=" " >
					${duplicateUsername}
					<input type="password" placeholder="Password" path="users.password"required=" " >
				<!--  	<input type="password" placeholder="Password Confirmation" required=" " >--
					<div class="register-check-box">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>I accept the terms and conditions</label>
						</div>
						<h6 class="animated wow slideInUp" data-wow-delay=".5s">Shipping Address</h6>
				<form class="animated wow slideInUp" data-wow-delay=".5s" path="shippingAddress" method="post">
					<input type="text" placeholder="ApartmentNumber" path="shippingAddress.apartmentnumber"name="shippingApartmentNumber"required=" " >
					<input type="text" placeholder="StreetName" path="shippingAddress.streetname "name="shippingStreetName" required=" " >
					<input type="text" placeholder="City"  path="shippingAddress.city" name="shippingCity" required=" " >
					<input type="text" placeholder="State" path="shippingAddress.state" name="shippingState required=" " >
					<input type="text" placeholder="zipcode" path="shippingAddress.zipcode" name="shippingZipcode"required=" " >
					<input type="text" placeholder="Country" path="shippingAddress.country "name="shippingCountry" required=" " >
					<div class="check">
							<label class="checkbox"><input type="checkbox" name="billingtoo"onclick="FillBilling(this.form)"><i> </i>same us shipping address</label>
						</div>
						
						<h6 class="animated wow slideInUp" data-wow-delay=".5s">billing Address</h6>
				<form class="animated wow slideInUp" data-wow-delay=".5s" path="billingAddress" method="post">
					<input type="text" placeholder="ApartmentNumber" path="billingAddress.apartmentnumber" name="billingApartmentNumber"required=" " >
					<input type="text" placeholder="StreetName"path="billingAddress.streetname" name="billingStreetName" required=" " >
					<input type="text" placeholder="City" path="billingAddress.city"name="billingCity" required=" " >
					<input type="text" placeholder="State" path="billingAddress.state"name="billingState required=" " >
					<input type="text" placeholder="zipcode" path="billingAddress.zipcode"name="billingZipcode"required=" " >
					<input type="text" placeholder="Country"path="billingAddress.country" name="billingCountry" required=" " >
					
					<div class="register-check-box">
					</div>
					<input type="submit" value="Register">
				</form>
			</div>-->
			
					
						
			<div class="register-home animated wow slideInUp" data-wow-delay=".5s">
				<a href="index">Home</a>
			</div>
		</div>
	</div>
<!-- //register -->
</body>
<%@include file="footer.jsp" %>
</html>