<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furnish</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="/resources/js/jquery.min.js"></script>
<!-- //js -->
<!-- Angular Js -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
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
<!--start-smooth-scrolling-->
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smooth-scrolling-->
</head>
<body ng-app="app"  ng-controller="ProductController">
<div>
<div class="page-header">
<b>product Details</b>
</div>
<table>
<thead>
<tr>
<th>Label</th>
<th>value</th>
</tr>
</thead>
<tr>
<td>Product Name:</td>
<td>${product.name }</td>
</tr>
<tr>
<td>Product Description:</td>
<td>${product.description }</td>
</tr>
<tr>
<td>Product Price:</td>
<td>${product.price }</td>
</tr>
<tr>
<td>Category Details:</td>
<td>${product.category.categoryDetails }</td>
</tr>
<tr>
<td>Manufacturing Date:</td>
<td>${product.mfg }</td>
</tr>
<tr>
			<td>
			</td>
			
			<td><a href="" ng-click="addToCart(${product.id })"><span class="glyphicon glyphicon-shopping-cart"></span></a></td>
			</tr>

</table>
</div>

</body>
<script src="<c:url value="/resources/js/controller.js"></c:url>"></script>
<%@include file="footer.jsp" %>
</html>

