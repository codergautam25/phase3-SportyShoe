<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Add/Edit Product</title>
<style type="text/css">
<%@include file="/WEB-INF/view/css/admin-style.css"%>
div.edit-pro{
	margin-top : 10px;
	padding-top : 40px;
	padding-left : 50px;
	width : 320px;
	border : 1px solid #ccc;
	box-shadow : 0 8px 12px 0px rgba(0,0,0,0.3);
	positive : absolute;
	text-align: left;
}
input,select{
  	padding: 5px 10px;
  	margin: 8px 0;
  	display: inline-block;
  	border: 2px solid #ccc;
  	border-radius: 4px;
  	box-sizing: border-box;
  	width: 150px;
}
button{
  	border-radius: 4px; 
	border:none;
	height: 30px;
	width : 80px;
	display : inline-block;
	font-size : 15px;
	background-color: rgb(0, 255, 128);
	margin-left: 90px;
}
</style>
</head>
<body>
<center>
<div class="admin-header"><jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include></div>
<div class="admin-topbar"><jsp:include page="/WEB-INF/view/components/admin-topbar.jsp" ></jsp:include></div>
<br><br><br>

<%
if (request.getParameter("error") != null)
	out.print(request.getParameter("error"));
%>
<div class="edit-pro">
	<form name=frmProduct method=post action="admineditproductaction">
	
		<input type=hidden name=id value="${product.ID }">
	 
	 		<label>Product name* :</label>
	 		<input name=name  maxlength=100 value="${product.name }" required="required"><br>
	 
	 		<label>Price* :</label>
	 		<input name=price type="numeric"  maxlength=6 value="${product.price }" style="margin-left: 55px;" required="required"><br>
	 
	 		<label>Category* :</label>
	 			<select name=category style="margin-left: 30px;" required="required">
	 				<option value="0">Select category</option>
	 				${catDropdown}
	 			</select><br><br>
	 		
	 		   <button>Save</button><br><br><br>
	 		
	</form>
</div>
<br><br><br>
<div class="admin-footer"><jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include></div>
</center>
</body>
</html>