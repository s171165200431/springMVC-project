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
ENTER USERNAME AND PASSWORD <br>
${error }
${logout }
${registrationSuccess }
<form action="<c:url value="j_spring_security_check"></c:url>" method="post" >
Enter username <input type="text" name="j_username"><br>
Enter password <input type="text" name="j_password"><br>
<input type="submit" value="submit">
</form>
</body>
</html>