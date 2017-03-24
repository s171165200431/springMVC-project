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
		<h2>BasicInfo</h2>
			<br>
				<div class="form-group">
					<form:label path="firstname">FIRST NAME</form:label>
					<form:input path="firstname" required=" " title="name should have  min 3 char and no digits" pattern="[A-Za-z]{3,15}"></form:input>
				</div>
								
						<div class="form-group">
								<form:label path="lastname">LAST NAME</form:label>
								<form:input path="lastname" required=" " title="name should have  min 3 char and no digits " pattern="[A-Za-z]{3,15}"></form:input>
						</div>
						<div class="form-group">
								<form:label path="email">EMAIL</form:label>
								<form:input path="email" required=" " id="emailId" pattern="[^ @]*@[^ @]*" />
						</div>
						<div class="form-group">
								<form:label path="phonenumber">PHONE NUMBER</form:label>
								<form:input path="phonenumber"  required=" "  title="mobile number should start with either 7/8/9 and should contain 10 digits"
													pattern="[789][0-9]{9}" ></form:input>
						</div>
						<div class="form-group">
								<form:label path="users.username">USERNAME</form:label>
								<form:input path="users.username" title="name should have min 3 char and no digit" required=" " pattern="[A-Za-z]{3,15}"></form:input>
								${duplicateUsername}
						</div>
						<div class="form-group">
								<form:label path="users.password">PASSWORD</form:label>
								<form:input path="users.password" type="password" title="Password should be min one uppercase,lowercase and number" required=" "  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"></form:input>
						</div>
								<h2>BillingAddress</h2>
								<br>
						<div class="form-group">
								<form:label path="billingAddress.apartmentnumber">APARTMENT NUMBER</form:label>
								<form:input path="billingAddress.apartmentnumber" required=" " name="billingApartmentNumber"></form:input>
						</div>
						<div class="form-group">
								<form:label path="billingAddress.streetname">STREET NAME</form:label>
								<form:input path="billingAddress.streetname" required=" " name="billingStreetName"></form:input>
						</div>
						<div class="form-group">
								<form:label path="billingAddress.city">CITY</form:label>
								<form:input path="billingAddress.city" required=" " name="billingCity" pattern="[A-Za-z]{3,15}"></form:input>
						</div>
						<div class="form-group">
								<form:label path="billingAddress.state">STATE</form:label>
								<form:input path="billingAddress.state" required=" " pattern="[A-Za-z]{3,15}" name="billingState"></form:input>
						</div> 
						<div class="form-group">
								<form:label path="billingAddress.country">COUNTRY</form:label>
								<form:input path="billingAddress.country" required=" " pattern="[A-Za-z]{3,15}" name="billingcountry"></form:input>
						</div>
						<div class="form-group">
								<form:label path="billingAddress.zipcode">ZIPCODE</form:label>
								<form:input path="billingAddress.zipcode" required=" " pattern="[0-9]{6}" name="billingZipcode"
													title="pincode should contain 6 digits and should be valid ex:XXXXXX"></form:input>
						</div>
								
								<h2>ShippingAddress</h2>
								<br>
						<div class="form-group">
								<form:label path="shippingAddress.apartmentnumber" name="shippingApartmentNumber">APARTMENT NUMBER</form:label>
								<form:input path="shippingAddress.apartmentnumber" required=" " ></form:input>
						</div>
						<div class="form-group">
								<form:label path="shippingAddress.streetname">STREET NAME</form:label>
								<form:input path="shippingAddress.streetname" required=" " name="shippingStreetName"></form:input>
						</div>
						<div class="form-group">
								<form:label path="shippingAddress.city">CITY</form:label>
								<form:input path="shippingAddress.city" required=" " name="shippingCity"></form:input>
						</div>
						<div class="form-group">
								<form:label path="shippingAddress.state">STATE</form:label>
								<form:input path="shippingAddress.state" required=" " name="shippingState" pattern="[A-Za-z]{3,15}"></form:input>
						</div>
						<div class="form-group">
								<form:label path="shippingAddress.country">COUNTRY</form:label>
								<form:input path="shippingAddress.country" required=" " name="shippingCountry" pattern="[A-Za-z]{3,15}"></form:input>
						</div>
						<div class="form-group">
								<form:label path="shippingAddress.zipcode">ZIPCODE</form:label>
								<form:input path="shippingAddress.zipcode" name="shippingZipcode" pattern="[0-9]{6}"
													title="pincode should contain 6 digits and should be valid ex:XXXXXX" required=" "></form:input>
						</div>
								<input type="submit" value="register">
					</form:form>
								
					</div>
								
			  </div>
			</div>
	</div>
								<!-- //register -->
</body>
<%@include file="footer.jsp" %>
</html>