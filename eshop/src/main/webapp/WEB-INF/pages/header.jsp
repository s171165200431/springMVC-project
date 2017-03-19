<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furnish</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="${pageContext.servletContext.contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
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
<!-- //animation-effect -->
</head>
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="header-grid">
				<div class="header-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<ul>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="harishreer@gmail.com">harishreer@gmail.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>9600604299</li>
						<c:if test="${pageContext.request.userPrincipal.name ==null }">
						<li><i class="glyphicon glyphicon-log-in" aria-hidden="true"></i><a href="<c:url value="/loginpage"></c:url>">Login</a></li>
					       </c:if>
					       <c:if test="${pageContext.request.userPrincipal.name ==null }">
						<li><i class="glyphicon glyphicon-book" aria-hidden="true"></i><a href="<c:url value="/all/registrationForm"></c:url>">Register</a></li>
					       </c:if>
					       <c:if test="${pageContext.request.userPrincipal.name !=null }">
						<li><a href="<c:url value="/loginpage?logout"></c:url>">logout</a></li>
			               </c:if>
					</ul>
				</div>
				   <div class="header-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<ul class="social-icons">
						<li><a href="https://www.facebook.com/" class="facebook"></a></li>
						<li><a href="https://twitter.com/" class="twitter"></a></li>
						<li><a href="https://accounts.google.com/" class="g"></a></li>
						<li><a href="https://www.instagram.com/" class="instagram"></a></li>
					</ul>
				  </div>
<html>
				<div class="clearfix"> </div>
			</div>
			<div class="logo-nav">
				<div class="logo-nav-left animated wow zoomIn" data-wow-delay=".5s">
				<c:url var="url" value="/home"></c:url>
					<h1><a href="${url}">Furnish<span>Shop anywhere</span></a></h1>
				</div>
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header nav_2">
						<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
				    </div> 
					<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
						<ul class="nav navbar-nav">
						<c:url var="url" value="/home"></c:url>
							<li class="active"><a href="${url}" class="act">Home</a></li>
							
							<c:url var="allProducts" value="/all/product/getAllProducts"></c:url>
    							 <li><a href="${allProducts}">All product</a></li>	
							<!-- Mega Menu -->
							<!--  <li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Products <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Chair</h6>
												<li><a href="products.html">plastic</a></li>
												<li><a href="products.html">Wooden</a></li>
												<li><a href="products.html">cushion</a></li>
												<li><a href="products.html">Dinning chair</a></li>
												<li><a href="products.html">office chair</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Sofa</h6>
												<li><a href="products.html">Wooden</a></li>
												<li><a href="products.html">cushion sofa set</a></li>
												<li><a href="products.html">leather</a></li>
												<li><a href="products.html">paleroma</a></li>
												<li><a href="products.html">Accessories</a></li>
												<li><a href="products.html">Jewellery</a></li>
												<li><a href="products.html">Beauty & Grooming</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Table</h6>
												<li><a href="products.html">Dinning table</a></li>
												<li><a href="products.html">Coffee table</a></li>
												<li><a href="products.html">Billiards table</a></li>
												<li><a href="products.html">Chess table</a></li>
												<li><a href="products.html">Brand Stores</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>-->
						<!-- http://localhost:8080/project1/admin/product/productform -->	
				                           <c:url var="url" value="/admin/product/productform"></c:url>
				                           
                                           <c:if test="${pageContext.request.userPrincipal.name !=null }">
                                          <security:authorize access="hasRole('ROLE_ADMIN')">
                                           <li><a href="${url }">Add New Product</a></li>
                                           </security:authorize>
   
							
							
   
 		<li class="dropdown">
								
							<security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
							<a href="" class="dropdown-toggle" data-toggle="dropdown">Furniture<b class="caret"></b></a>
							</security:authorize>
				<ul class="dropdown-menu">
								<c:forEach var="c" items="${categories }">
							<li><a href="<c:url value="/all/product/productsByCategory?searchCondition=${c.categoryDetails}"></c:url>" > ${c.categoryDetails}</a></li>
								</c:forEach>
			    </ul>
		</li>
		<security:authorize access="hasAnyRole('ROLE_ADMIN','ROLE_USER')">
			<li><a href="">welcome ${pageContext.request.userPrincipal.name }</a></li>
		</security:authorize>					
	 </c:if>						
							
							 <ul class="dropdown-menu multi-column columns-3">
									<div class="row">
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Home Collection</h6>
												<li><a href="furniture.html">Cookware</a></li>
												<li><a href="furniture.html">Sofas</a></li>
			
												<li><a href="furniture.html">Dining Tables</a></li>
												<li><a href="furniture.html">Shoe Racks</a></li>
												<li><a href="furniture.html">Home Decor</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Office Collection</h6>
												<li><a href="furniture.html">Carpets</a></li>
												<li><a href="furniture.html">Tables</a></li>
												<li><a href="furniture.html">Sofas</a></li>
												<li><a href="furniture.html">Shoe Racks</a></li>
												<li><a href="furniture.html">Sockets</a></li>
												<li><a href="furniture.html">Electrical Machines</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<h6>Decorations</h6>
												<li><a href="furniture.html">Toys</a></li>
												<li><a href="furniture.html">Wall Clock</a></li>
												<li><a href="furniture.html">Lighting</a></li>
												<li><a href="furniture.html">Top Brands</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</ul>
							</li>
							 <!-- <li><a href="<c:url value="/admin/product/productform"></c:url>">Add Product</a></li>
							<li><a href="<c:url value="/all/product/getAllProducts" ></c:url>">mailus</a></li>-->
						</ul>
					</div>
					</nav>
				</div>
				<div class="logo-nav-right">
					<div class="search-box">
						<div id="sb-search" class="sb-search">
							<form>
								<input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
								<input class="sb-search-submit" type="submit" value="">
								<span class="sb-icon-search"> </span>
							</form>
						</div>
					</div>
						<!-- search-scripts -->
						<script src="/resources/js/classie.js"></script>
						<script src="/resources/js/uisearch.js"></script>
							<script>
								new UISearch( document.getElementById( 'sb-search' ) );
							</script>
						<!-- //search-scripts -->
				</div>
				<div class="header-right">
					<div class="cart box_1">
					<security:authorize access="hasRole('ROLE_USER')">
						<a href="<c:url value="/cart/getCartId"/>">
							<h3> <div class="total">
								<span class=""></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
								<img src="<c:url value="/resources/images/bag.png"  />" >
							</h3>
						</a>
						
						<p><a href="<c:url value="/cart/getCartId"/>">Cart Here</a></p>
						</security:authorize>
						<div class="clearfix"> </div>
					</div>	
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //header -->
</body>
</html>