<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<style type="text/css">
<%@include file="/WEB-INF/view/css/admin-style.css"%>
div.para{
	font-family: cursive;
	font-size: 25px;
	font-weight: bold;
	color: #6600ff;
}
</style>
</head>
<body>
<center>
<div class="admin-header">
<jsp:include page="/WEB-INF/view/components/admin-header.jsp" ></jsp:include>
<h3>Admin- Dashboard</h3>
</div>
<div class="admin-topbar"><jsp:include page="/WEB-INF/view/components/admin-topbar.jsp" ></jsp:include></div>
<br><br><br>

<div class="para">
Welcome, Admin. <br>
Choose an option from the menu above.
</div>

<br><br><br>
<div class="admin-footer"><jsp:include page="/WEB-INF/view/components/admin-footer.jsp"></jsp:include></div>
</center>
</body>
</html>