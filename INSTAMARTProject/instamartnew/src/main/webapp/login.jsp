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
<%@include file="includes/head.jsp"%>
<title>Instamart Login</title>
</head>
<body style="justify-content:center;align-items:center;text-align:center;background-color: lightblue;">
	<%@include file="/includes/navbar.jsp"%>

	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="user-login" method="post">
					<div clarss="fom-group">
						<label>Email address</label> 
						<input type="email" name="login-email" class="form-control" placeholder="Enter email">
					</div>
					<div class="form-group">
						<label>Password</label> 
						<input type="password" name="login-password" class="form-control" placeholder="Password">
					</div>
					<div class="text-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
				<% String error= request.getParameter("error");
				if(error!=null && error.equals("1")){%>
					<p style="padding:20px;color: red;">Invalid user name or password. Please try again</p>
				<%} %>
				<div style="padding:20px;">
				<p style="justify-content:center;text-align: center;align-item:center;">New User, Please 
				<a href=" SignUp.jsp" style="text-decoration: none;padding: 2px;">SignUp</a>
				</p>
				</div>
		</div>
	</div>

	<%@include file="/includes/footer.jsp"%>
</body>
</html>