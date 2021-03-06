 <%@ page language="java" contentType="text/html" import="com.niit.model.Product"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE> 
<html>
<head>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<table class="table" style=width:60%;margin-top:100px;margin-left:auto;margin-right:auto;>
	<h1 align="center">Product List</h1>
    
    <thead class="blue-grey lighten-5"><tr bgcolor="black">
	<td style=color:white;>Product Name</td>
	<td style=color:white;>Category ID</td>
	<td style=color:white;>Supplier ID</td>
	<td style=color:white;>Price</td>
	<td style=color:white;>Stock</td>
	<td style=color:white;>Photo</td>
	<td style=color:white;>Operation</td>
</tr>
</thead>
<c:forEach items="${productList}" var="product">
	<tr bgcolor="#EEEEEE">
		<td>${product.productName}</td>
		<td>${product.catname}</td>
		<td>${product.supplierName}</td>
		<td><i class="fa fa-inr" aria-hidden="true"> ${product.price}</td>
		<td>${product.stock}</td>
		<td>
		<a href="productDesc/${product.productId}">
		<img src="<c:url value="/resources/Product/${product.productId}.jpg"/>" width=100px;height=100px;/>
		</a>
		</td>
		<td><a style=padding-left:10px; href="<c:url value="/admin/updateProduct/${product.productId}"/>"><i class="glyphicon glyphicon-edit" style="color:green";></i></a>
		<a style=padding-left:25px; href="<c:url value="/admin/deleteProduct/${product.productId}"/>"><i class="glyphicon glyphicon-trash" style="color:red";></i></a>
		
		</td>
		</tr>
	</c:forEach>
</table>


</body>
<div  style=width:100%;height:2px;margin-top:50px;background:black;></div>
<jsp:include page="footer.jsp"></jsp:include>

</html> 