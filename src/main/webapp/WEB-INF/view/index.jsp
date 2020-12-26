<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes</title>
<style>
<%@include file="/WEB-INF/view/css/style.css"%>
table {
  border-collapse: collapse;
  width: 50%;
}
th, td {
  text-align: center;
  padding: 8px;
}
tr:nth-child(even){border-bottom : 1px solid #ccc;}
tr:nth-child(odd){border-bottom : 1px solid #ccc;}
th {
  background-color: #33B7FF;
}
td a{
	text-decoration : none;
	border-radius: 4px; 
	border:none;
	height: 25px;
	width : 100px;
	padding-top : 8px;
	display : inline-block;
	font-size : 17px;
	background-color: rgb(0, 255, 128);
	color : #000;
}
</style>
</head>
<body>
<center>
<div class="header"><jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include></div>
<div class="topbar"><jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include></div>


<table>
 	<tr>
 		<th>Product</th>
 		<th>Price</th>
 		<th>Category</th> 
 		<th></th>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.name }</td>
 			<td>${item.price }</td>
 			<td>${mapCats.get(item.ID)}</td>
 	  		<td class="addtocart">
 	  			<a href="cartadditem?id=${item.ID}">Add To Cart</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table>
<br><br><br><br>
<div class="footer">
<jsp:include page="/WEB-INF/view/components/footer.jsp"></jsp:include>
</div>
</center>
</body>
</html>
