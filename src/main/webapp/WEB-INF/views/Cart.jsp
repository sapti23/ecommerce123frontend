<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
</style>

</head>
<body style="background-color:grey">
<br>
<br>
<br>
<br>
<h1 style="color:Brown" align="center"><b><u><i>CART DETAILS</i></u></b></h1>      
    
	<div class="container">
		<table class="table table-striped" class="w3-table-all w3-hoverable" border="6">
		<thead>
			<tr class="w3-light-grey">     
	  <th>Cart Item Id</th>
      <th>Product </th>
      <th>Quantity</th>
      <th>Product Total</th>
      <th>Delete Product</th>
      </tr>
  </thead>
  <tbody>
 
     
    <c:if  test="${not empty cartStatus}">
       
        ${cartStatus} 
    
    </c:if>
  
    <c:set var="grandtotal" value="0.0" />
    <c:forEach  var="cartItem"   items="${cartItems}">
    <tr>
      <td>${cartItem.id}</td>
      <td>${cartItem.product.name}</td>
      <td>${cartItem.quantity}</td>
      <td>${cartItem.totalPrice}</td>
      
      <td><a href="/E-COM/customer/${cartItem.id}/removeCartItem"  class="btn btn-danger">DELETE</a></td>
      <c:set  var = "grandtotal" value ="${grandtotal + cartItem.totalPrice} "  />
      
    </tr>
    </c:forEach>
	</table>
	</div>
	  
      <h2 style="color:#7C7C7C;" align="center"><b>Grand Total :${grandtotal}</b></h2>

<br>
<!--  display the Checkout if grand total is > 0 and navigate to checkout flow  -->


<a href="${contextRoot}/all/product/productlist"  class="btn btn-success" >CONTINUE SHOPPING</a>
<a href="${contextRoot}/customer/${cartItem.id}/checkout"  class="btn btn-success">CHECK OUT</a>


</body>
</html>