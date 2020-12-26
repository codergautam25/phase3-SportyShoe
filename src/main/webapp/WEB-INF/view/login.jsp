<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Login</title>
<style>
<%@include file="/WEB-INF/view/css/style.css"%>
div.loginbox{
	margin-top : 30px;
	padding : 50px 0;
	width : 400px;
	border : 1px solid #ccc;
	box-shadow : 0 8px 12px 0px rgba(0,0,0,0.3);
	positive : absolute;
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
<div class="loginbox">
<form name=frmLogin action="loginaction" method="post">
	    <label><b>Email Id* :</b></label><br>
 		<input name=email_id maxlength=50 required="required"><br>
 	 	<label><b>Password* :</b></label><br>
 		<input name=pwd maxlength=10 type="password" required="required"><br>
 	
 			<button>Login</button><br>
 			Not a member? <a href="signup">Signup</a>
 		
</form>
</div>
<br><br><br>
<div class="footer">
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</center>
</body>
</html>