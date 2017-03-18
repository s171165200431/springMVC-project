<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furnish</title>
</head>
<body>
<!--  ENTER USERNAME AND PASSWORD <br>

<form action="<c:url value="j_spring_security_check"></c:url>" method="post" >
Enter username <input type="text" name="j_username"><br>
Enter password <input type="text" name="j_password"><br>
<input type="submit" value="submit">-->
<!-- login -->
${error }
${logout }
${registrationSuccess }
	<div class="login">
		<div class="container">
			<h3 class="animated wow zoomIn" data-wow-delay=".5s">Login Form</h3>
			<p class="est animated wow zoomIn" data-wow-delay=".5s">Login here and enjoy purchase..	</p>
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form action="<c:url value="j_spring_security_check"></c:url>" method="post">
					<input type="text" placeholder="username" required=" " name="j_username">
					<input type="password" placeholder="Password" required=" " name="j_password">
					<div class="forgot">
						<a href="#">Forgot Password?</a>
					</div>
					<input type="submit" value="Login">
				</form>
			</div>
			<h4 class="animated wow slideInUp" data-wow-delay=".5s">For New People</h4>
			<p class="animated wow slideInUp" data-wow-delay=".5s"><a href="register">Register Here</a> (Or) go back to <a href="<c:url value="/home"></c:url>">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
<!-- //login -->
</form>
</body>
</html>