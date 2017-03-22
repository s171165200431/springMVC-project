<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@include file="WEB-INF/pages/header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>Furnish</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<!-- //js -->
<!-- cart -->
<script src="<c:url value="/resources/js/simpleCart.min.js"/>"></script>
<!-- cart -->
<!-- for bootstrap working -->
<script type="text/javascript" src="/resources/js/bootstrap-3.1.1.min.js"/></script>
<!-- //for bootstrap working -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- timer -->
<link rel="stylesheet" href="/resources/css/jquery.countdown.css" />
<!-- //timer -->
<!-- animation-effect -->
<link href="/resources/css/animate.min.css" rel="stylesheet"> 
<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
<script>
 new WOW().init();
</script>
<!-- //animation-effect -->
</head>
	
<body>
<!-- banner -->
	<div class="banner">
		<div class="container">
			<div class="banner-info animated wow zoomIn" data-wow-delay=".5s">
				<h3>Free Online Shopping</h3>
				<h4>Up to <span>50% <i>Off/-</i></span></h4>
				<div class="wmuSlider example1">
					<div class="wmuSliderWrapper">
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>In Modren loft,you can't just fill a space with furniture each piece has to be perfect</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Every mind in a room packed with furniture</p>
								</div>
							</div>
						</article>
						<article style="position: absolute; width: 100%; opacity: 0;"> 
							<div class="banner-wrap">
								<div class="banner-info1">
									<p>Feeling Comfortable...</p>
								</div>
							</div>
						</article>
					</div>
				</div>
					<script src="<c:url value="/resources/js/jquery.wmuSlider.js"/>"></script> 
					<script>
						$('.example1').wmuSlider();         
					</script> 
			</div>
		</div>
	</div>
<!-- //banner -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container"> 
			<div class="banner-bottom-grids">
				<div class="banner-bottom-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<div class="grid">
						<figure class="effect-julia">
							<img src="<c:url value="resources/images/4.jpg" />"class="img-responsive" >
							<figcaption>
								<h3>Luxury<span>Furniture</span><i> in online shopping</i></h3>
								<div>
									<p>cushion bed</p>
								</div>
							</figcaption>			
						</figure>
					</div>
				</div>
				<div class="banner-bottom-grid-left1 animated wow slideInUp" data-wow-delay=".5s">
					<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="<c:url value="resources/images/1.jpg"/>"  class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-pos">
							<p>Discount 45%</p>
						</div>
					</div>
					<div class="banner-bottom-grid-left-grid left1-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="<c:url value="resources/images/2.jpg" />" class="img-responsive" />
						</div>
						<div class="banner-bottom-grid-left1-position">
							<div class="banner-bottom-grid-left1-pos1">
								<p>Latest New Collections</p>
							</div>
						</div>
					</div>
				</div>
				<div class="banner-bottom-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<div class="banner-bottom-grid-left-grid grid-left-grid1">
						<div class="banner-bottom-grid-left-grid1">
							<img src="<c:url value="resources/images/3.jpg"  />"class="img-responsive" />
						</div>
						<div class="grid-left-grid1-pos">
							<p>top and classic designs <span>2016 Collection</span></p>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //banner-bottom -->
<!-- collections -->
	<div class="new-collections">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">New Collections</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Enjoy new collection</p>
			<div class="new-collections-grids">
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src="<c:url value="resources/images/7.jpg" />"class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png"/>" class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png"/>" class="img-responsive" />
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png" />" class="img-responsive" />
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<h4><a href="single.html">SOFA</a></h4>
						<p>Best cushion sofa .</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><i></i> <span class="item_price">45000</span><a class="item_add" href="all/product/viewproduct/1">add to cart </a></p>
						</div>
					</div>
					<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src="<c:url value="resources/images/8.jpg"/>" class="img-responsive" /></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" "alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />"class="img-responsive" "alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png" />"class="img-responsive" "alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png" />"class="img-responsive" "alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png" />" class="img-responsive" "alt=" ">
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<h4><a href="single.html">chair</a></h4>
						<p>Modren chair</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><i></i> <span class="item_price">1750</span><a class="item_add" href="#">add to cart </a></p>
						</div>
					</div>
				</div>
				<div class="col-md-6 new-collections-grid">
					<div class="new-collections-grid1 new-collections-grid1-image-width animated wow slideInUp" data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src="<c:url value="resources/images/5.jpg" />"class="img-responsive" "alt=" "></a>
							<div class="new-collections-grid1-image-pos new-collections-grid1-image-pos1">
								<a href="single.html">Quick View</a>
							</div>
							<div class="new-collections-grid1-right new-collections-grid1-right-rate">
								<div class="rating">
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />"class="img-responsive" "alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png"  />"class="img-responsive" "alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png"/>" class="img-responsive" "alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" "alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png" />" class="img-responsive" "alt=" ">
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
							<div class="new-one">
								<p>New</p>
							</div>
						</div>
						<h4><a href="single.html">Dining Table</a></h4>
						<p>Elagent Design...</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><i></i> <span class="item_price">75000</span><a class="item_add" href="#">add to cart </a></p>
						</div>
					</div>
					<div class="new-collections-grid-sub-grids">
						<div class="new-collections-grid1-sub">
							<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
								<div class="new-collections-grid1-image">
									<a href="single.html" class="product-image"><img src="<c:url value="resources/images/6.jpg" />" class="img-responsive" "alt=" "></a>
									<div class="new-collections-grid1-image-pos">
										<a href="single.html">Quick View</a>
									</div>
									<div class="new-collections-grid1-right">
										<div class="rating">
											<div class="rating-left">
												<img src="<c:url value="resources/images/2.png"/>"  class="img-responsive" "alt="">
											</div>
											<div class="rating-left">
												<img src="<c:url value="resources/images/2.png"/>"  class="img-responsive" "alt=" ">
											</div>
											<div class="rating-left">
												<img src="<c:url value="resources/images/2.png"/>" class="img-responsive" "alt=" ">
											</div>
											<div class="rating-left">
												<img src="<c:url value="resources/images/2.png" />" class="img-responsive" "alt=" ">
											</div>
											<div class="rating-left">
												<img src="<c:url value="resources/images/2.png" />"class="img-responsive" "alt=" ">
											</div>
											<div class="clearfix"> </div>
										</div>
									</div>
								</div>
								<h4><a href="single.html">cushion sofa</a></h4>
								<p>Best sofa design ...</p>
								<div class="new-collections-grid1-left simpleCart_shelfItem">
									<p><i></i> <span class="item_price">50000</span><a class="item_add" href="#">add to cart </a></p>
								</div>
							</div>
						</div>
						<div class="new-collections-grid1-sub">
							<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
								<div class="new-collections-grid1-image">
									<a href="single.html" class="product-image"><img src="<c:url value="resources/images/9.jpg" />" class="img-responsive" "alt=" "></a>
									<div class="new-collections-grid1-image-pos">
										<a href="single.html">Quick View</a>
									</div>
									
								</div>
								<h4><a href="single.html">Table</a></h4>
								<p>Teak Wood</p>
								<div class="new-collections-grid1-left simpleCart_shelfItem">
									<p><i></i> <span class="item_price">15000</span><a class="item_add" href="#">add to cart </a></p>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
				<div class="col-md-3 new-collections-grid">
					<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src="<c:url value="resources/images/10.jpg" />" class="img-responsive" alt=" "></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png"/>"  class="img-responsive" alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png" />" class="img-responsive" alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png" />" class="img-responsive" alt=" ">
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<h4><a href="single.html">classic design</a></h4>
						<p>Sofa with more Pillo .</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><i></i> <span class="item_price">80000</span><a class="item_add" href="#">add to cart </a></p>
						</div>
					</div>
					<div class="new-collections-grid1 animated wow slideInUp" data-wow-delay=".5s">
						<div class="new-collections-grid1-image">
							<a href="single.html" class="product-image"><img src="<c:url value="resources/images/11.jpg"/>"  class="img-responsive" alt=" "></a>
							<div class="new-collections-grid1-image-pos">
								<a href="single.html">Quick View</a>
							</div>
							<div class="new-collections-grid1-right">
								<div class="rating">
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />"class="img-responsive" alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/2.png" />" class="img-responsive" alt=" ">
									</div>
									<div class="rating-left">
										<img src="<c:url value="resources/images/1.png" />" class="img-responsive" alt=" ">
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
						<h4><a href="single.html">SNOOKER TABLE</a></h4>
						<p>With quality wood.</p>
						<div class="new-collections-grid1-left simpleCart_shelfItem">
							<p><i></i> <span class="item_price">25000</span><a class="item_add" href="#">add to cart </a></p>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //collections -->
<!-- new-timer -->
	<div class="timer">
		<div class="container">
			<div class="timer-grids">
				<div class="col-md-8 timer-grid-left animated wow slideInLeft" data-wow-delay=".5s">
					<h3><a href="products.html">NewArrival</a></h3>
					<div class="rating">
						
						
						<div class="clearfix"> </div>
					</div>
					<div class="new-collections-grid1-left simpleCart_shelfItem timer-grid-left-price">
						<p><i></i> <span class="item_price">20000</span></p>
						<h4>A chair may symbolize sitting down to take time out to contemplate a situation before proceeding.
						 If the dreamer is providing the chair, it’s time to sit for a while with oneself to contemplate new directions. 
						 If the chair is being offered, the dreamer should be open for taking advice. 
						 If, however, the dreamer finds himself or herself on the “hot seat,” then caution should prevail.</h4>
						<p><a class="item_add timer_add" href="#">add to cart </a></p>
					</div>
					<div id="counter"> </div>
					<script src="resources/js/jquery.countdown.js"></script>
					<script src="resources/js/script.js"></script>
				</div>
				<div class="col-md-4 timer-grid-right animated wow slideInRight" data-wow-delay=".5s">
					<div class="timer-grid-right1">
						<img src="<c:url value="resources/images/17.jpg"/>" class="img-responsive" alt=" ">
						<div class="timer-grid-right-pos">
							<h4>Special Offer</h4>
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- //new-timer -->
<!-- collections-bottom -->
	<div class="collections-bottom">
		<div class="container">
			<div class="collections-bottom-grids">
				<div class="collections-bottom-grid animated wow slideInLeft" data-wow-delay=".5s">
					<h3>45% Offer for <span>Above 1 lakh puchase..</span></h3>
				</div>
			</div>
			<div class="newsletter animated wow slideInUp" data-wow-delay=".5s">
				<h3>Newsletter</h3>
				<p>Join us now to get all news and special offers.</p>
				<form>
					<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
					<input type="email" value="Enter your email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email address';}" required="">
					<input type="submit" value="Join Us" >
				</form>
			</div>
		</div>
	</div>
<!-- //collections-bottom -->

</body>
<%@include file="WEB-INF/pages/footer.jsp" %>
</html>