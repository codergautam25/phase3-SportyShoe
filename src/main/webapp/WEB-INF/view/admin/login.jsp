<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style type="text/css">
<%@include file="/WEB-INF/view/css/admin-style.css"%>
div.loginbox{
	margin-top : 30px;
	padding : 40px 0;
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
<div class="admin-header"><jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include></div>

${error}<br>

<div class="loginbox">
<form name=frmLogin action="adminloginaction" method="post">
 
 		<label><b>Admin Id* :</b></label><br>
 		<input name=admin_id maxlength=20 required="required"><br><br>
 	
 		<label><b>Admin Password* :</b></label><br>
 		<input name=admin_pwd maxlength=10 type="password" required="required"><br><br>
 	
 			<button>Login</button>
 		
</form>
</div>
<br><br>
<div class="admin-footer"><jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include></div>
</center>
</body>
</html>