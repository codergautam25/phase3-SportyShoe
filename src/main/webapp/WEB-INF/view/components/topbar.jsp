<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
<%@ page isELIgnored="false" %>
<ul>
<li><a href="home">Home&emsp;</a> </li>
<% if (session.getAttribute("user_id") == null ) { %>
<li>	<a href="login">Login/Signup  </a>   </li> 
<% }  else { %>
<li>	<a href="dashboard">Dashboard</a>   </li>
<li>	<a href="cart">Cart</a>   </li>
<li>	<a href="logout">Logout</a>   </li>
<br>
<li>	<a href="editprofile">Edit Profile</a>  </li>
<li>	<a href="memberpurchases">Your Orders</a> </li>

<% }  %>
</ul>

<br><br>