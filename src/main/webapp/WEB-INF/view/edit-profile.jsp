<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Edit Profile</title>
<style>
<%@include file="/WEB-INF/view/css/style.css"%>
div.updatebox{
	padding-top : 40px;
	width : 400px;
	border : 1px solid #ccc;
	box-shadow : 0 8px 12px 0px rgba(0,0,0,0.3);
	positive : absolute;
	text-align: left;
}
label{
	padding-left : 50px;
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
<br>

${error }
<div class="updatebox">
	<h4 style="text-align:center;">Update your details</h4>
<form name=frmEdit action="editprofileaction" method="post">
	<input type=hidden name=user_id value="${user.ID}">

	 <label>Password* :</label>
     <input name=pwd maxlength=10 type="password" style="margin-left: 60px;" required="required"><br>
     
     <label>Confirm Password* :</label>
 	 <input name=pwd2 maxlength=10 type="password" required="required"><br>
 	 
 	 <label>First Name* :</label>
 	 <input name=fname maxlength=25 value="${user.fname }" style="margin-left: 46px;" required="required"><br>
 	 
 	 <label>Last Name* :</label>
 	 <input name=lname maxlength=25 value="${user.lname }" style="margin-left: 46px;" required="required"><br>
 	 
 	 <label>Age* :</label>
 	 <input name=age maxlength=3 type="numeric" value="${user.age }" style="margin-left: 85px;" required="required"><br>
 	 
 	 <label>Address* :</label>
 	 <input name=address maxlength=100 value="${user.address }" style="margin-left: 60px;" required="required"><br>

 			<center><button>Update</button><center> <br>
 		
</form>
<br><br>
</div>
<br><br><br>
<div class="footer">
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</center>
</body>
</html>