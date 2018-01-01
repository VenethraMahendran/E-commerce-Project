<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="header.jsp"></jsp:include>
<title>SUPPLIER FORM</title>
</head>
<body>
<!-- <style>
body  {
    background-image:"/resources/background/background.jpg";
    background-color: #cccccc;
}
</style> -->
<br>
<br>
<form action="${pageContext.request.contextPath}/admin/addSupplier" method="post">
  <fieldset>
    <legend>SUPPLIER:</legend>
     SUPPLIER ID:<br>
    <input  name="supplierId" > 
    <br>
    SUPPLIER NAME:<br>
    <input type="text" name="supplierName">
    <br>
    SUPPLIER EMAIL:<br>
    <input type="text" name="supplierEmail">
    <br>
    SUPPLIER DESCRIPTION:<br>
    <textarea rows="4" cols="50" name="supplierDes">
    
    </textarea>
    <br>
    <input type="submit" value="Submit">
  </fieldset>
</form>
<br>
<br>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>

<table style="width:100%">

  <tr>
    <th><i>Supplier Id</i></th> 
    <th><i>Supplier Name</i></th> 
    <th><i>Supplier Email</i></th>
    <th><i>Supplier Description</i></th>
    <th><i>Operation</i></th>
  </tr>
  <c:forEach items="${supplierList}" var="supplier" varStatus="status">
  <tr>
    <td>${supplier.supplierId}</td> 
    <td>${supplier.supplierName}</td>
    <td>${supplier.supplierEmail}</td>
    <td>${supplier.supplierDes}</td>
    <td>
	<a style=padding-left:10px; href="<c:url value="/admin/updateSupplier/${supplier.supplierId}"/>"><i class="glyphicon glyphicon-edit" style="color:green";></i></a>
	<a style=padding-left:25px; href="<c:url value="/admin/deleteSupplier/${supplier.supplierId}"/>"><i class="glyphicon glyphicon-trash" style="color:red";></i></a>
  </td>
  </tr>
  </c:forEach>
 
</table>


<div  style=width:100%;height:2px;margin-top:150px;background:black;></div>
 
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>
