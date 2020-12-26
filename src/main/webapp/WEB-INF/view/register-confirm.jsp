<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Registration Confirmation</title>
<style type="text/css">
<%@include file="/WEB-INF/view/css/style.css"%>
p{
	font-family: cursive;
	font-size: 20px;
	color: #6600ff;
}
a.login1{
  	border-radius: 4px; 
	border:none;
	height: 30px;
	width : 220px;
	display : inline-block;
	background-color: rgb(0, 255, 128);
	margin : 5px;
	font-size : 15px;
	text-decoration : none; 
	color : #000
}
</style>
</head>
<body>
<center>
<div class="header"><jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include>
<h2>Sporty Shoes - Registration Confirmation</h2></div>
<div class="topbar"><jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include></div>

<p>Your registration is confirmed.<p><br>
<a class="login1" href="login">Login to continue shopping</a><br>

<br>
<div class="footer">
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</center>
</body>
</html>