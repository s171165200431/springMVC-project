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
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.servletContext.contextPath}/resources/css/style.css" rel='stylesheet' type='text/css' />
<script src="<c:url value="resources/js/jquery.min.js"/>"></script>
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
					<a href="${delete }"><span class="glyphicon glyphicon-remove"></span></a>
					
					<c:url var="edit" value="/admin/product/editform/${p.id }"></c:url>
					<a href="${edit }"><span class="glyphicon glyphicon-pencil"></span></a>
					</td>
				    
				</tr>
			</c:forEach>
		</table>

	</div>
</body>
<%@include file="footer.jsp" %>
</html>