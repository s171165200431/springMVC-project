<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Clear Cart

Check Out 
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">

<table class="table table-striped">
<thead>
<tr><th>Name</th><th>Quantity</th><th>Total Price</th>
</tr>
</thead>

<tr ng-repeat="cartItem in  cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
</tr>

</td>
<td></td>
</tr>

</table>
Total Price : {{calculateGrandTotal()}}

</table>

</div>

</div>

</body>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
</html>