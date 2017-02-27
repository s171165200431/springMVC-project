<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
      
       <!-- JQuery -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
    
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<script src="resources/js/jquery.min.js"></script>
<!--start-smooth-scrolling-->
<script type="text/javascript" src="resources/js/move-top.js"></script>
<script type="text/javascript" src="resources/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
    
</head>
<body>

<!--header-top-->
	<div class="header-top" id="home">
		<div class="container">
			<div class="head-main">
				<div class="col-md-4 head-left">
					<ul>
						<li><a href="https://www.facebook.com/"><span class="fb"> </span></a></li>
						<li><a href="https://twitter.com/"><span class="twit"> </span></a></li>
						<li><a href="https://www.pinterest.com/"><span class="pin"> </span></a></li>
						<li><a href="http://www.practicalecommerce.com/"><span class="rss"> </span></a></li>
					</ul>
				</div>
				<div class="col-md-4 head-middle">
					<h1><a href="index">LuxuryFurniture</a></h1>
				</div>
				<div class="col-md-4 head-right">
					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="Search" type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
						</form>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--header-top-->
	<!--search-scripts-->
	<script src="resources/js/classie.js"></script>
	<script src="resources/js/uisearch.js"></script>
		<script>
			new UISearch( document.getElementById( 'sb-search' ) );
		</script>
	<!--//search-scripts-->
	<!--navigation-starts-->
	<div class="navigation">
		<span class="menu"></span> 
			<ul class="navig cl-effect-16">
				<li class="active"><a href="index">Home</a></li>
				<li><a href="about">About</a></li>
				<li><a href="gallery">Photo Gallery</a></li>
				<li> <a href="<c:url value="/all/registrationForm"></c:url>">Register</a></li>
				
				<c:url var="url" value="/admin/product/productform"></c:url>

   <!-- http://localhost:8080/project1/admin/product/productform -->
   <li><a href="${url }">Add New Product</a></li>
   
   <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
   
   <li><a href="${allProducts}">Browse all products</a></li>
   
 <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">furniture<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:url var="url1" value="/all/product/productsByCategory?searchCondition=New Arrivals"></c:url>
			<li><a href="${url1}">chair</a></li>
			<c:url var="url2" value="/all/product/productsByCategory?searchCondition=General"></c:url>
			<li><a href="${url2}">bed</a></li>
			
			<c:url var="url_3" value="/all/product/productsByCategory?searchCondition=Discount Sale"></c:url>
			<li><a href="${url_3}">sofa</a></li>
			
			<c:url var="url_4" value="/all/product/productsByCategory?searchCondition=Hot Sale"></c:url>
			<li><a href="${url_4}">bero</a></li>
			</ul>
			</li>
				 <li><a href="blog.html">Blog</a></li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
	</div>
	<!--navigation-end-->

<!--  <nav class="navbar navbar-default">
<div class="container-fluid">
<ul class="nav navbar-nav">
   <li> <a href="home">Home</a> </li>
   <li><a href="aboutUs">About Us</a></li>
   <c:url var="url" value="/admin/product/productform"></c:url>

   <!-- http://localhost:8080/project1/admin/product/productform -->
 <!--   <li><a href="${url }">Add New Product</a></li>
   
   <c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
   
   <li><a href="${allProducts}">Browse all products</a></li>
   
 <li class="dropdown">
			<a href="" class="dropdown-toggle" data-toggle="dropdown">
                     Select by Category<b class="caret"></b></a>
			<ul class="dropdown-menu">
			<c:url var="url1" value="/all/product/productsByCategory?searchCondition=New Arrivals"></c:url>
			<li><a href="${url1}">New Arrivals</a></li>
			<c:url var="url2" value="/all/product/productsByCategory?searchCondition=General"></c:url>
			<li><a href="${url2}">General</a></li>
			
			<c:url var="url_3" value="/all/product/productsByCategory?searchCondition=Discount Sale"></c:url>
			<li><a href="${url_3}">Discount Sale</a></li>
			
			<c:url var="url_4" value="/all/product/productsByCategory?searchCondition=Hot Sale"></c:url>
			<li><a href="${url_4}">Hot Sale</a></li>
			</ul>
			</li>
</ul>

</div>

</nav>-->

</body>
</html>