<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sporty Shoes - Your Purchases</title>
<style type="text/css">
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
</style>
</head>
<body>
<center>
<div class="header"><jsp:include page="/WEB-INF/view/components/header.jsp" ></jsp:include></div>
<div class="topbar"><jsp:include page="/WEB-INF/view/components/topbar.jsp" ></jsp:include></div>

<br><br><b>Total ${list.size()} Orders: ${totalAmount }</b><br><br>

<table>
 	<tr>
 		<th>Order ID</th>
 		<th>Date</th>
 		<th>Total</th>
 		<th>Items</th>
 	</tr>
 	<c:forEach items="${list}" var="item">
 	  	<tr>
	 		<td>${item.ID }</td>
 			<td>${item.date }</td>
 			<td>${item.total}</td>
 			<td>
 				${mapItems.get(item.ID)}
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