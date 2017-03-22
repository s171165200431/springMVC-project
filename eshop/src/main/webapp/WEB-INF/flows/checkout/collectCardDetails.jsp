<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/pages/header.jsp" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Furnish</title>
<link href="${pageContext.servletContext.contextPath}/resources/css/styles.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Fugaz+One' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Alegreya+Sans:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="<c:url value="/resources/js/jquery.min.js"/>"></script>
</head>
<body>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Payment</h1>

            <p class="lead">Order confirmation</p>
        </div>
 
		
        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizontal">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                       <div class="txt-center">
                            <h1>Card Details</h1>
                             <ul class="resp-tabs-list">
										  <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span><label class="pic1"></label>Credit Card</span></li>
										  <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span><label class="pic3"></label>Net Banking</span></li>
										  <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span><label class="pic4"></label>PayPal</span></li> 
										  <li class="resp-tab-item" aria-controls="tab_item-3" role="tab"><span><label class="pic2"></label>Debit Card</span></li>
										  <div class="clear"></div>
									  </ul>	
                       </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <br/>
                                    <div class="resp-tabs-container">
									<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
										<div class="payment-info">
											
                                   
									<h3 class="pay-title">Credit Card Info</h3>
											<form>
											<form class="form-inline">
  												<div class="form-group">
    												<label for="text">NAME ON CARD:</label>
   													 <input type="text" required="" class="form-control" id="name">
												  </div>
 											 <div class="form-group">
												    <label for="pwd">CARD NUMBER</label>
												    <input type="text" class="form-control"title="Card Number should be 16 digit"  id="pwd" value="0000-0000-0000-0000" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '0000-0000-0000-0000';}" required="">
												  </div>
												  <h5>EXPIRATION DATE</h5>
												  <select name='expireMM' id='expireMM'>
													    <option value=''>Month</option>
													    <option value='01'>January</option>
													    <option value='02'>February</option>
													    <option value='03'>March</option>
													    <option value='04'>April</option>
													    <option value='05'>May</option>
													    <option value='06'>June</option>
													    <option value='07'>July</option>
													    <option value='08'>August</option>
													    <option value='09'>September</option>
													    <option value='10'>October</option>
													    <option value='11'>November</option>
													    <option value='12'>December</option>
													</select> 
													<select name='expireYY' id='expireYY'>
													    <option value=''>Year</option>
													    <option value='17'>2017</option>
													    <option value='18'>2018</option>
													    <option value='19'>2019</option>
													    <option value='20'>2020</option>
													    <option value='21'>2021</option>
													    <option value='22'>2022</option>
													    <option value='23'>2023</option>
													    <option value='24'>2024</option>
													    <option value='25'>2025</option>
													    <option value='26'>2026</option>
													</select> 
													<input class="inputCard" type="hidden" name="expiry" id="expiry" maxlength="4"/>
												
												
												
												
												
												
												
												
												
												
												
													<div class="tab-form-right user-form-rt">
														<h5>CVV NUMBER</h5>													
														<input type="password" pattern="/^[0-9]{3}$/" value="xxx" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'xxx';}" required="">
													</div>
													<div class="clear"></div>
												</div>
												
											</form>
											<div class="single-bottom">
													<ul>
														<li>
															<input type="checkbox"  id="brand" value="">
															<label for="brand"><span></span>By checking this box, I agree to the Terms & Conditions & Privacy Policy.</label>
														</li>
													</ul>
											</div>
										</div>
									</div>
									
											
                                    
                                    
                           
                        <input type="hidden" name="_flowExecutionKey" />

                        <br/><br/>

                        <button class="btn btn-default" name="_eventId_backTocollectShippingDetail">Back</button>

                        <input type="submit" class="btn btn-default" name="_eventId_cardDetailCollected" />

                       <center> <button class="btn btn-default" name="_eventId_cancel">Cancel</button></center>
                    </div>
          
           </address>
          
           </div>
           </div>
            </div>          
                </form:form>
            
            </div>
        </div>
        </div>
       













</div>
</div>
</div>
    </div>   
</body>
<%@ include file="/WEB-INF/pages/footer.jsp" %>
</html>