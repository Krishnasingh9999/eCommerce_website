<%@page import="model.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	User auth = (User) request.getSession().getAttribute("auth");
	if (auth != null) {
		response.sendRedirect("index.jsp");
	}
	ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
	if (cart_list != null) {
		request.setAttribute("cart_list", cart_list);
	}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="includes/head.jsp"%>
<title>Registration Page</title>
</head>
<body style="justify-content:center;align-items:center;text-align:center;background-color: lightblue;">

<%@include file="/includes/navbar.jsp"%>
<div style="padding:20px;background-color:#f4f4f4; margin-left:35%; margin-top: 100px; width:500px;height:410px; justify-content:center;align-items:center;text-align:center;border: 1px solid black;border-radius:3px;" class="cnt">
<div style="width:100%;">
	<h4 style="background-color:lightpink;width:100%;padding:5px;">User Registration</h4>
</div>
<div class="Reg"style=" justify-content:center;align-items:center;text-align:center;padding:30px; background-color: #f4f4f4;">
	<form action="RegForm" method="post">
 	Id:<input type ="number" name="Reg-id"/><br/><br/>
	Name:<input type="text" name="Reg-name"/><br/><br/>
	Email:<input type="email" name="Reg-email"/><br/><br/>
	Password:<input type="password" name="Reg-psw"/><br/><br/>
	
	<input type ="submit" value="Register"/>
	</form>
	
	</div>
	<div style="background-color:white;">
		<p style=" justify-content:center;align-items:center;text-align:center;">Already user? Please
		<a href="login.jsp" style="text-decoration: none;">Login</a>
		</p>
	</div>
	</div>
	
</body>
</html>