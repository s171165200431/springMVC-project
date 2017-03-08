<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
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
<!--start-smoth-scrolling-->
<script type="text/javascript" src="<c:url value="resources/js/easing.js"/>"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->

<script type="text/javascript" src="<c:url value="resources/js/move-top.js"/>"></script>
<title>LuxuryFurniture</title>
<script>
$(document).ready(function(){
	var searchCondition='${searchCondition}';
	$('.table').DataTable({
		"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
		"oSearch":{"sSearch":searchCondition}
	})
});
</script>
</head>
<body>

	
	<div class="container">

		<table class="table table-striped">
			<thead>
				<tr>
					<th>Image</th>	
					<th>ID</th>			
					<th>Product Name</th>
					<th>Description</th>
					<th>categoryDetails</th>
					<th>view/Edit/Delete</th>

				</tr>
			</thead>
			<c:forEach var="p" items="${productList}">
			<tr>
				<td>
				<img src="<c:url value="/resources/images/${p.id }.png"/>"alt="${p.id }">
			 
				</td>
				
					<td>${p.id }</td>
					<td>${p.name }- ${p.id}</td>
					<td>${p.description }</td>
					<td>${p.category.categoryDetails}</td>
				
			
				
					<c:url var="url" value="/all/product/viewproduct/${p.id }"></c:url>
					<td>
					<a href="${url }"><span class="glyphicon glyphicon-info-sign"></span></a> 
				
					<c:url var="delete" value="/admin/product/deleteproduct/${p.id }"></c:url>
		    	<security:authorize access="hasRole('ROLE_ADMIN')">
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
				</security:authorize>	
					<c:url var="edit" value="/admin/product/editform/${p.id }"></c:url>
				<security:authorize access="hasRole('ROLE_ADMIN')">
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
				</security:authorize>
					</td>
				    
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
<%@include file="footer.jsp" %>
</html>