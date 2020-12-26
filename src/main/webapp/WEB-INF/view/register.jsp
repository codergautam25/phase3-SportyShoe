<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Register</title>
<style>
<%@include file="/WEB-INF/view/css/style.css"%>
div.registerbox{
	margin-top : 20px;
	padding-top : 40px;
	padding-left : 50px;
	width : 400px;
	border : 1px solid #ccc;
	box-shadow : 0 8px 12px 0px rgba(0,0,0,0.3);
	positive : absolute;
	text-align: left;
}
input{
  	padding: 5px 10px;
  	margin: 8px 0;
  	display: inline-block;
  	border: 2px solid #ccc;
  	border-radius: 4px;
  	box-sizing: border-box;
}
button{
  	border-radius: 4px; 
	border:none;
	height: 30px;
	width : 80px;
	display : inline-block;
	font-size : 15px;
	background-color: rgb(0, 255, 128);
	margin : 5px;
} 
</style>
</head>
<body>
<center>
<div class="header"><jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include></div>
<div class="topbar"><jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include></div>

${error}
<div class="registerbox">
<form name=frmReg action="signupaction" method="post">

		<label>Email Id* :</label>
 		<input name=email_id type="email" maxlength=50 style="margin-left: 62px;" required="required"><br>
 		<label>Password* :</label>
 	 	<input name=pwd maxlength=10 type="password" style="margin-left: 58px;" required="required"><br>
 		<label>Confirm Password* :</label>
 		<input name=pwd2 maxlength=10 type="password" required="required"><br>
 		<label>First Name* :</label>
 		<input name=fname maxlength=25 style="margin-left: 53px;" required="required"><br>
 		<label>Last Name* :</label>
 		<input name=lname maxlength=25 style="margin-left: 51px;" required="required"><br>
 		<label>Age* :</label>
 		<input name=age maxlength=3 type="number" style="margin-left: 90px;" required="required"><br>
 		<label>Address* :</label>
 		<input name=address maxlength=100 style="margin-left: 63px;" required="required"><br>
 		
 		<button>Signup</button><br>
 		Already a member? <a href="login">Login</a>
 		<br><br><br>
 		
</form>
</div>
<br><br><br>
<div class="footer">
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</center>
</body>
</html>