<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">
<a href="<spring:url value="/order/${cartId}"/>

<!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Checkout Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- checkout -->
	<div class="checkout">
		<div class="container">
			<h3 class="animated wow slideInLeft" data-wow-delay=".5s">Your shopping cart contains: <span>3 Products</span></h3>
			<div class="checkout-right animated wow slideInUp" data-wow-delay=".5s">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>SL No.</th>	
							<th>Product</th>
							<th>Quality</th>
							<th>Product Name</th>
							<th>Quantity</th>
							<th>Price</th>
							<th>Remove</th>
						</tr>
					</thead>
					<tr ng-repeat="cartItem in  cart.cartItems">
						<td class="invert">1</td>
						<td <a href="single.html"><img src=""<c:url value="/resources/images/${p.id }.png"/>"alt="${p.id }" class="img-responsive" /></a></td>
						<td class="invert">
							 <div class="quantity"> 
								<div class="quantity-select">                           
									<div class="entry value-minus">&nbsp;</div>
									<div class="entry value"><span>1</span></div>
									<div class="entry value-plus active">&nbsp;</div>
								</div>
						</td>
						<td class="invert">{{cartItem.product.name}}</td>
						<td class="invert">{{cartItem.quantity}}</td>
						<td class="invert">{{cartItem.totalPrice}}</td>
							</div>
						<td class="invert">
					
							<div class="rem">
								<div class="close1" ng-click="removeFromCart(cartItem.id)"> </div>
							</div>
							<script>$(document).ready(function(c) {
								$('.close1').on('click', function(c){
									$('.rem1').fadeOut('slow', function(c){
										$('.rem1').remove();
									});
									});	  
								});
						   </script>
						</td>
					</tr>
					
					
								<!--quantity-->
									<script>
									$('.value-plus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
										divUpd.text(newVal);
									});

									$('.value-minus').on('click', function(){
										var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
										if(newVal>=1) divUpd.text(newVal);
									});
									</script>
								<!--quantity-->
				</table>
			</div>
			<div class="checkout-left">	
				<div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
					<h4>Continue to basket</h4>
					<ul ng-repeat="cartItem in  cart.cartItems">
						<li>Product1 <i>-</i> <span>{{cartItem.totalPrice}} </span></li>
						
						
						<li>Total <i>-</i> <span>{{calculateGrandTotal()}}</span></li>
					</ul>
				</div>
				<div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
				<c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
					<a href="${allProducts}"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Continue Shopping</a>
				
				<a href="<spring:url value="/order/${cartId}"/>"><span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>Checkout</a>
				
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //checkout -->
<!--  <a href=""class="btn btn-danger"pull-left ng-click="clearcart()">
<span class="glyphicon glyphicon-remove-sign"></span>

Clear Cart


</a>
<a href="<spring:url value="/order/${cartId}"/>" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span>checkout</a><br>
<table class="table table-striped">
<thead>
<tr><th>Name</th><th>Quantity</th><th>Total Price</th><th>remove</th>
</tr>
</thead>

<tr ng-repeat="cartItem in  cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="label label-danger" pull-left ng-click="removeFromCart(cartItem.id)">
<span class="glyphicon glyphicon-remove"></span>Remove
</a>
</td>
<td>
</td>

</tr>

</table>
Total Price : {{calculateGrandTotal()}}

</table>

</div>

</div>-->

</body>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
</html>