<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>FLORIST CHARM</title>


	<style>
.flowers {
	background-color: grey;
	color: white;
	margin: 20px;
	padding: 20px;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333333;
}

</style>
</head>

<body>
	<div class="flowers">
		<h2>FLORIST CHARM</h2>
	</div>
	<div>
		<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">FLORIST CHARM</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/index">HOME</a></li>


				<c:if test="${pageContext.request.userPrincipal.name==null}">
					<ul class="nav navbar-nav navbar-left">
						<li><a href="${pageContext.request.contextPath}/prolist">
								All Product</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${pageContext.request.contextPath}/goTologin"><i
								class="fa fa-sign-in" aria-hidden="true"></i> Login</a></li>
						<li><a href="${pageContext.request.contextPath}/register"><span
								class="glyphicon glyphicon-user"></span> Sign Up</a></li>

					</ul>
				</c:if>

				<c:if test="${pageContext.request.userPrincipal.name!=null}">

					
						<security:authorize access="hasRole('ROLE_ADMIN')">
							
								<li><a href="${pageContext.request.contextPath}/admin/category"> Category</a></li>
							<li><a href="${pageContext.request.contextPath}/admin/supplier"> Supplier </a></li>
							<li><a href="${pageContext.request.contextPath}/admin/product"> Product </a></li>
							<li><a href="${pageContext.request.contextPath}/admin/productDetails">
						 Product List</a></li>
						
							
						</security:authorize>
						</c:if>

				
			
				<c:if test="${pageContext.request.userPrincipal.name!=null}">

					<security:authorize access="hasRole('ROLE_USER')">
						
							<li><a
								href="${pageContext.request.contextPath}/user/prolist"><i
									class="fa fa-list-alt" aria-hidden="true"></i>All Product</a></li>
						
						
							

								
									<li><a href="${pageContext.request.contextPath}/user/goToCart"><i
										class="fa fa-cart-plus" aria-hidden="true"> My Cart </i> </a></li>
										 <li><a href="${pageContext.request.contextPath}/user/goToOrders"><i
										class="fa fa-cart-plus" aria-hidden="true"> My Orders </i> </a></li>
										</security:authorize>
					<li><a href="${pageContext.request.contextPath}/logout">
						 Logout</a></li>
								


					
				</c:if>
		</div>
		</nav>
</body>
</html>
