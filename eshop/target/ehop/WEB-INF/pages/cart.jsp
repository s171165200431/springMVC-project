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


 Check Out
<div ng-app="app" ng-controller="ProductController">
<div ng-init="getCart(${cartId})">
<a href="" class="btn btn-danger" pull-left ng-click="clearCart()">
<span class="glyphicon glyphicon-Remove-sign"></span>
Clear Cart

</a>
<a href="<c:url value="/order/${cartId}"></c:url> class="btn btn-success pull-right"><span class="glyphicon glyphicon-Remove-sign"></span></a>
<table class="table table-striped">
<thead>
<tr><th>Name</th><th>Quantity</th><th>Total Price</th><th>Remove</th>
</tr>
</thead>

<tr ng-repeat="cartItem in  cart.cartItems">
<td>{{cartItem.product.name}}</td>
<td>{{cartItem.quantity}}</td>
<td>{{cartItem.totalPrice}}</td>
<td><a href="" class="label label-danger" pull-left ng-click="removeFromCart(cartItem.id)">
<span class="glyphicon glyphicon-remove"></span>Remove
</a></td>
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