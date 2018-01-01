<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="header.jsp"></jsp:include>
<title>CATEGORY FORM</title>
</head>
<body>
<br>
<br>
<form action="${pageContext.request.contextPath}/admin/addCategory"method="post">
  <fieldset>
    <legend>CATEGORY:</legend>
    CATEGORY ID:<br>
    <input type="text" name="catID" >
    <br>
    CATEGORY NAME:<br>
    <input type="text" name="catName">
    <br>
    CATEGORY DESCRIPTION:<br>
    <textarea rows="4" cols="50" name="catDesc">
    
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
    <th>Category Id</th>
    <th>Category Name</th> 
    <th>Category Description</th>
    <th>Category Operation</th>
  </tr>
  <c:forEach items="${categoryList}" var="category" varStatus="status">
  <tr>
    <td>${category.catId}</td>
    <td>${category.catName}</td>
    <td>${category.catDesc}</td>
    <td>
    <a style=padding-left:10px; href="<c:url value="/admin/updateCategory/${category.catId}"/>"><i class="glyphicon glyphicon-edit" style="color:green";></i></a>
	<a style=padding-left:25px; href="<c:url value="/admin/deleteCategory/${category.catId}"/>"><i class="glyphicon glyphicon-trash" style="color:red";></i></a>
  </td>
  </tr>
  </c:forEach>
 
</table>

<div  style=width:100%;height:2px;margin-top:150px;background:black;></div>
 
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>

