<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="WEB-INF/pages/header.jsp" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<script src="<c:url value="/resources/js/jquery.min.js"/>"> </script>
<!--start-smooth-scrolling-->
<script type="text/javascript" src="<c:url value="/resources/js/move-top.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/easing.js"/>"></script>
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
<!--script-for-menu-->
		<script>
			$("span.menu").click(function(){
				$(" ul.navig").slideToggle("slow" , function(){
				});
			});
		</script>
	<!--script-for-menu-->
<script type="text/javascript" src="<c:url value="resources/js/easing.js"/>"></script>
	<!--banner-starts-->
	<div class="banner">
		<section class="slider">
            <div class="flexslider">
                <ul class="slides">
					<li>
					<div class="banner1">
						<div class="container">
							<div class="banner-text">
								<p>In Modren loft,you can't just fill a space with furniture</p>
								<h3>Each piece has to be perfect</h3>
							</div>
						</div>
					</div>
					</li>
					<li>
					<div class="banner2">
						<div class="container">
							<div class="banner-text">
								<p>Every mind in a room</p>
								<h3>packed with furniture</h3>
							</div>
						</div>
					</div>
					</li>
					<li>
					<div class="banner3">
						<div class="container">
							<div class="banner-text">
								<p>Feeling</p>
								<h3>comfortable...</h3>
							</div>
						</div>
					</div>
					</li>
					<li>
					<div class="banner4">
						<div class="container">
							<div class="banner-text">
								<p>I look at every piece of furniture and every  </p>
								<h3>object as an individual sculpture</h3>
							</div>
						</div>
					</div>
					</li>
				</ul>
			</div>
		</section>
		<div class="down">
			<h3>Visit Our Site</h3>
			<ul>
				<li><a href="#welcome" class="hvr-bounce-to-right scroll">Welcome</a></li>
				<li><a href="#furniture" class="hvr-bounce-to-right scroll">Furniture</a></li>
				<li><a href="#news" class="hvr-bounce-to-right scroll">News & Events</a></li>
				<li><a href="#product" class="hvr-bounce-to-right scroll">Product</a></li>
			</ul>
		</div>
	</div>
	<!--banner-end-->
	<!--FlexSlider-->
	<link rel="stylesheet" href="resources/css/flexslider.css" type="text/css" media="screen" />
	<script defer src="<c:url value="resources/js/jquery.flexslider.js"/>"></script>
	<script type="text/javascript">
    $(window).load(function(){
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>
	<!--End-slider-script-->
	<!--starts-welcome-->
	<div class="welcome" id="welcome">
		<div class="container">
			<div class="welcome-top heading">
				<h2>Welcome</h2>
				<p>Welcome to our luxury furniture website, buy and fill your environment space with our furniture and feel comfortable.</p>
			</div>
			<div class="welcome-bottom">
				<div class="col-md-4 welcome-left">
					<img src="<c:url value="resources/images/w-1.jpg" />">
					<div class="welcome-btm">
						<a href="single.html">Boat Grid <span class="arw"> </span></a>
					</div>
				</div>
				<div class="col-md-4 welcome-left">
					<img src= "<c:url value="resources/images/w-2.jpg" />">
					<div class="welcome-btm">
						<a href="single.html">Boat Grid <span class="arw"> </span></a>
					</div>
				</div>
				<div class="col-md-4 welcome-left">
					<img src="<c:url value="resources/images/w-3.jpg"  />">
					<div class="welcome-btm">
						<a href="single.html">Boat Grid <span class="arw"> </span></a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--welcome-End-->
	<!--our-starts-->
	<div class="our" id="furniture">
		<div class="container">
			<div class="our-top">
				<div class="col-md-7 our-left heading">
					<h3>Our Furniture</h3>
					<p>Luxury furniture we have a wonderful product like sofa,chair etc... By using luxury furniture make you feel luxury living and pieceful.We are having classic and modern furniture.Furniture are madeup of quality products woods and steel. </p>
				</div>
				<div class="col-md-5 our-right">
					<a href="single"><img src="<c:url value="resources/images/o-1.jpg" />"></a>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="our-top">
				<div class="col-md-7 o-left">					
					<a href="single.html"><img src="<c:url value="resources/images/o-2.jpg" />"></a>
				</div>
				<div class="col-md-5 o-right  heading">
					<h3>Furniture Design</h3>
					<p>Transitional furniture bridges the gap between traditional and contemporary design. This style typically features clean lines, versatile palettes and timeless shapes, creating a simple, sophisticated look that complements a wide variety of designs..</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="our-top">
				<div class="col-md-7 our-left heading">
					<h3>Special Design</h3>
					<p>Casual furniture typically includes plush cushioning, generous seating and relaxed styling, making it a good choice for unwinding with family and friends. Casual furniture often features recline mechanisms and special features like cup holders or storage compartment. </p>
				</div>
				<div class="col-md-5 our-right">
					<a href="single.html"><img src="<c:url value="resources/images/o-3.jpg"  /></a>">
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--our-End-->
	<!--new-arrivals-->
			<div class="new-arrivals" >
  <div class="container">
	<div class="padding-new" id="new">  
		<center><P class= "text-primary"></p>
	<h1> New Arrivals </h1></center>
			
		<div class="new-content">
			
			<div class="new-up">
				
				<div class="col-md-6 new-res">
					<div class="col-md-6 new-i wow fadeInLeft animated" data-wow-delay=".5s">
						<div class="new-image hovereffect">
							<img src="<c:url value="resources/images/c6.jpg" />">
						</div>
					</div>
	

				  <div class="clearfix"> </div>
				</div>
					
				<div class="col-md-6 new-res">
					<div class="col-md-6 new-i wow fadeInLeft animated" data-wow-delay=".5s">
						<div class="new-image hovereffect">
							<img src="<c:url value="resources/images/bed3.jpg" />">
						</div>
					</div>
					
				  <div class="clearfix"> </div>
				</div>
				
			  <div class="clearfix"> </div>
			</div>
			
			<div class="new-down">
				
				<div class="col-md-6 new-res">				
					<div class="col-md-6 new-t">
						<div class="new-text wow fadeInLeft animated" data-wow-delay=".5s">
							
						</div>
					</div>
					<div class="col-md-6 new-i wow fadeInRight animated" data-wow-delay=".5s">
						<div class="new-image hovereffect">
							<img src="<c:url value="resources/images/rack1.jpg"/>">
						</div>
					</div>
				  <div class="clearfix"> </div>
				</div>
				
				<div class="col-md-6 new-res">	
					<div class="col-md-6 new-t">
						<div class="new-text wow fadeInLeft animated" data-wow-delay=".5s">
							
						</div>
					</div>
					<div class="col-md-6 new-i wow fadeInRight animated" data-wow-delay=".5s">
						<div class="new-image hovereffect">
							<img src="<c:url value="resources/images/sofa2.jpg"/>">
						</div>
					</div>
				  <div class="clearfix"> </div>
				</div>
				
			  <div class="clearfix"> </div>
			</div>
			
		</div> <!-- content ends here -->

	</div>
  </div>
</div> <!-- new arrivals ends here -->
	

</body>
<%@include file="WEB-INF/pages/footer.jsp" %>
</html>