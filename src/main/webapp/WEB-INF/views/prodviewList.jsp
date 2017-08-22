<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextRoot" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url var="css" value="/resources/css"/>    
<spring:url var="js" value="/resources/js"/>
<spring:url var="image" value="/resources/image"/>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Shopping - ${title}</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${css}/style.css">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
.bg-4 {
	background-color: #2f2f2f;
	color: #fff;
}
 
</style>

</head>
<body>

 <table width="120%" height="120%">
  <tr><td width="120%" height="120%"></td></tr>

</table>
	
	<table align="center">
	   <th></th>
	   <th>Product Id</th>
	   <th>Product Name</th>
	   <th>Product Description</th>
	   <th>Product Price</th>
		<tr>
		<td><img src="/shopping2/resources/image/${product.id}.jpg" width="20%" height="20%" /></td>
			<td width="200px" height="200px">${product.id}</td>
			<td width="200px" height="200px">${product.name}</td>
			<td width="200px" height="200px">${product.desc}</td>
			<td width="200px" height="200px">${product.price}</td>
			                                <td>   <a href="/ecommerce/customer/elec4/${product.id}" role="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="">ADD TO CART</a>'</td>
	                                            

                                            

			
		</tr>
		</table>

		</body>
</html>
