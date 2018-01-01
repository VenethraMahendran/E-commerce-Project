
   <%@ page language="java" contentType="text/html" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<title>PRODUCT</title>
<body>
<br>
<br>

<form:form action="${pageContext.request.contextPath}/admin/addProduct"  modelAttribute="product" enctype="multipart/form-data" method="post">

<table  class="table" style=width:30%;margin:auto;>

	<tr>

		<h1 align="center">Product Module</h1>

	</tr>

	<tr> 

		<td>Product ID</td>

		<td><form:input class="form-control" path="productId"/></td> 

	</tr>

	<tr> 

		<td>Product Name</td>

		<td><form:input class="form-control" path="productName"/></td>

	</tr>
	<tr>

		<td>Product Description</td>

		<td><form:textarea class="form-control" style="height:150px;"  path="productDes"/></td>

	</tr>

	<tr>

		<td>Product Stock</td>

		<td><form:input class="form-control" path="stock"/></td>

	</tr>

	<tr>

		<td>Product Price</td>

		<td><form:input  class="form-control" path="price"/></td>

	</tr>
	
	<tr>
		<td>Category</td>
		<td>
			<form:select path="catId">
			<form:option value="0">Choose a category</form:option>
			<form:options items="${categoryList}"/>
			</form:select>
		</td>
	</tr>
	
	<tr>
		<td>Supplier</td>
		<td>
			<form:select path="supplierId">
			<form:option value="0">Choose a supplier</form:option>
			<form:options items="${supplierList}"/>
			</form:select>
		</td>
	</tr>

	<tr>

		<td>Product Image</td>

		<td><form:input class="form-control" type="file" path="pimage"/></td>

	</tr>
	<tr>

		
	<tr style="width:100%;">

		<td>

			<button style="width:100px;margin-left:60px;"  class="btn btn-success btn-outline" type="submit" class="submitbtn">Insert</button>

		</td>

		<td>

			<button style="width:50%;" class="btn btn-default btn-outline" type="reset" class="erasebtn">Erase</button>

	</td>

	</tr>

	

</table>

</form:form>

<table style="width:100%">
  <tr>
    <th><i>Product Id</i></th>
    <th><i>Product Name</i></th> 
    <th><i>Product Desc</i></th> 
    <th><i>Price</i></th>
    <th><i>Stock</i></th>
    <th><i>Product Image</i></th>
    <th><i>Operation</i></th>
  </tr>
  <c:forEach items="${productList}" var="product" varStatus="status">
  <tr>
    <td>${product.productId}</td>
    <td>${product.productName}</td>
    <td>${product.productDes}</td> 
   <td>${product.price}</td>
    <td>${product.stock}</td>
   
    <c:set var="productImgPath" value="${pageContext.request.contextPath}/resources/Product/${product.productId}.jpg" />
    <td><img src="${pageContext.request.contextPath}/resources/Product/${product.productId}.jpg" style="width:50px;height:50px;" /></td>
    
     <td>
	
	
	<a style=padding-left:10px; href="<c:url value="/admin/updateProduct/${product.productId}"/>"><i class="glyphicon glyphicon-edit" style="color:green";></i></a>
	<a style=padding-left:25px; href="<c:url value="/admin/deleteProduct/${product.productId}"/>"><i class="glyphicon glyphicon-trash" style="color:red";></i></a>
  </td>
  </tr>
  </c:forEach>
 
</table>

<div  style=width:100%;height:2px;margin-top:150px;background:black;></div>
 
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>

