<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<%@ include file="header.jsp" %>
<html>
<head>
<link href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.servletContext.contextPath}/resources/css/style.css" rel='stylesheet' type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LuxuryFurniture</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<!-- aboutus start -->
<div class="about">
		<div class="container">
			<div class="about-top heading">
				<h2>About Us</h2>
			</div>
			<div class="about-bottom">				
				<div class="col-md-6 about-left">
					<img src="<c:url value="resources/images/abt-1.png" alt="" />">
				</div>
				<div class="col-md-6 about-right">
					<a href="single.html"><h4>Our innovative approach and optimal use of advanced technology enables us to guarantee complete, long-lasting elimination from your home or work premise. LuxuryFurniture is just what you need to win.</h4></a>
					<p>We are LuxuryFurniture.We have been leading  since 2004 and we take great pride in the fact that no one knows the way we do.With presence in over 30 cities , our network and expertise is unparalleled.</p>
					<p>From the outset, we have set the highest standards in  management are now considered to be the industry benchmark.</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--about-end-->
	<!--features-starts-->
	<div class="features">
		<div class="container">
			<div class="features-top heading">
				<h3>Features</h3>
				<p>Easily coordinated with Best Home Furnishings' chairs, gliders, recliners, and tables to fill any room. Wide selection of fabrics, woods and finish options to match every taste and décor. </p>
			</div>
			<div class="features-bottom">
				<div class="col-md-6 festure-left">
					<div class="f-left">
						<a href="single.html"><img src="<c:url value="resources/imagesimages/f-1.jpg" alt="" />"></a>
					</div>
					<div class="f-right">
						<ul>
							<li><a href="#">Versatile Style </a></li>
							<li><a href="#">Seat cores are extra thick, high-grade, high-density foam. </a></li>
							<li><a href="#">Seat cores are wrapped in a premium high-loft polyester fiber wrap.</a></li>
							<li><a href="#">Superior Spring Construction </a></li>
							<li><a href="#">Removable Backs with Quick-Fix Design</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-6 festure-left">
					<div class="f-left">
						<a href="single.html"><img src="<c:url value="resources/images/f-2.jpg" alt="" />"></a>
					</div>
					<div class="f-right">
						<ul>
							<li><a href="#">Superior Spring Construction</a></li>
							<li><a href="#">Seat cores are wrapped in a premium high-loft polyester fiber wrap</a></li>
							<li><a href="#">Removable Backs with Quick-Fix Design</a></li>
							<li><a href="#"><Versatile Style/a></li>
							<li><a href="#">Seat cores are extra thick, high-grade, high-density foam.</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--features-end-->
	<!--team-starts-->
	<div class="team">
		<div class="container">
			<div class="team-top heading">
				<h3>Our Team</h3>
			</div>
			<div class="team-bottom">
				<div class="col-md-3 team-left">
					<div class="view fifth-effect">
						<a href="#" title="Full Image"><img src="<c:url value="resources/images/team-3.jpg" alt=""/>"></a>
						<div class="mask1"></div>
					</div>
					<div class="team-text">
						<h4>Adamson</h4>
						
					</div>

				</div>
				<div class="col-md-3 team-left">
					<div class="view fifth-effect">
						<a href="#" title="Full Image"><img src="<c:url value="resources/images/team-2.jpg" alt=""/>"></a>
						<div class="mask1"></div>
					</div>
					<div class="team-text">
						<h4>Savits</h4>
						
					</div>

				</div>	
				<div class="col-md-3 team-left">
					<div class="view fifth-effect">
						<a href="#" title="Full Image"><img src="<c:url value="resources/images/team-1.jpg" alt=""/>"></a>
						<div class="mask1"></div>
					</div>
					<div class="team-text">
						<h4>David</h4>
						
					</div>
				</div>	
				<div class="col-md-3 team-left">
					<div class="view fifth-effect">
						<a href="#" title="Full Image"><img src="<c:url value="resources/images/team-4.jpg" alt=""/>"></a>
						<div class="mask1"></div>
					</div>
					<div class="team-text">
						<h4>Thomson</h4>
						</div>
				</div>					
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--team-end-->
</body>
<%@include file="footer.jsp" %>
</html>