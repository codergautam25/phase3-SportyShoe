<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Browse Members</title>
<style type="text/css">
<%@include file="/WEB-INF/view/css/admin-style.css"%>
table {
  border-collapse: collapse;
  width: 50%;
}
th, td {
  text-align: center;
  padding: 8px;
  height : 30px;
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
	color : #000;
}
</style>
</head>
<body>
<center>
<div class="admin-header"><jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include></div>
<div class="admin-topbar"><jsp:include page="/WEB-INF/view/components/admin-topbar.jsp" ></jsp:include></div>
<br><br><br>

<b>Total Members: ${list.size() }</b><br><br>

<table>
 	<tr>
 		<th>Name</th>
 		<th>Email</th>
 		<th>Signup Date</th>
 		<th>Age</th>
 		<th>Address</th>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.fname}&nbsp;${item.lname }</td>
 			<td>${item.email}</td>
 			<td>${item.dateAdded}</td>
 			<td>${item.age}</td>
 			<td>${item.address}</td>
 			
 	  	</tr>
 	  </c:forEach>
</table> 		
	
<br><br><br>
<div class="admin-footer"><jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include></div>
</center>
</body>
</html>