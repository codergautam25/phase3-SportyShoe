<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Checkout</title>
<style type="text/css">
<%@include file="/WEB-INF/view/css/style.css"%>
p{
	font-family: cursive;
	font-size: 20px;
	color: #6600ff;
}
a.payment-link{
  	border-radius: 4px; 
	border:none;
	height: 30px;
	width : 250px;
	display : inline-block;
	background-color: rgb(0, 255, 128);
	margin : 5px;
	font-size : 16px;
	text-decoration : none; 
	color : #000;
	padding-top: 5px; 
}
</style>
</head>
<body>
<center>
<div class="header"><jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include></div>
<div class="topbar"><jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include></div>

<p>Your Total Order is worth ${cartValue}</p>
<br>

<a class="payment-link" href="gateway">Pay via secure Payment Gateway</a>

<br><br>
<div class="footer">
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</center>
</body>
</html>