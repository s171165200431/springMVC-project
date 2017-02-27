<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<script src="resources/js/jquery.min.js"></script>
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
<title>LuxuryFurniture</title>
</head>
<body>
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
</table>
</div>
</body>
<%@include file="footer.jsp" %>
</html>