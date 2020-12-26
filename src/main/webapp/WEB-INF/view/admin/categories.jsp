<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin - Setup Product Categories</title>
<style type="text/css">
<%@include file="/WEB-INF/view/css/admin-style.css"%>
table {
  border-collapse: collapse;
  width:30%;
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
td a,a.addcat{
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

<b>Total Categories: ${list.size()}</b> &nbsp;&nbsp; 
<a class="addcat" href="admineditcat?id=0"  style="background-color: rgb(0, 255, 128);">Add Category</a><br><br>
<table>
 	<tr>
 		<th>Category</th>
 		<th></th>
 	</tr>
 	  <c:forEach items="${list}" var="item">
 	  	<tr>
 	  		<td>${item.name }</td>
 	  		<td>
 	  			<a href="admineditcat?id=${item.ID}"  style="background-color: rgb(0, 255, 128);">Edit</a> 
 	  		    <a href="admindeletecat?id=${item.ID}" style="background-color: #ff4d4d;">Delete</a>
 	  		</td>
 	  	</tr>
 	  </c:forEach>
</table> 	

<br><br><br>
<div class="admin-footer"><jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include></div>
</center>
</body>
</html>