<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Invoice</title>
</head>
<body>

	<jsp:include page="header.jsp" />
	<section class="cart"> <%@ taglib prefix="c"
		uri="http://java.sun.com/jsp/jstl/core"%>
	<h1>Your invoice</h1>
	<table>
		<tr>
			<th>Date</th>
			<td>${invoice.invoiceDateDefaultFormat}</td>
			<td></td>
		</tr>
		<tr>
			<th class="top">Ship To</th>
			<td>${user.addressHTMLFormat}</td>
			<td></td>
		</tr>
		<tr>
			<td colspan="3"><hr></td>
		</tr>
		<tr>
			<th>Qty</th>
			<th>Description</th>
			<th>Price</th>
		</tr>

		<c:forEach var="item" items="${invoice.lineItems}">
			<tr>
				<td>${item.quantity}</td>
				<td>${item.product.description}</td>
				<td>${item.totalCurrencyFormat}</td>
			</tr>
		</c:forEach>

		<tr>
			<th>Total:</th>
			<td></td>
			<td>${invoice.invoiceTotalCurrencyFormat}</td>
		</tr>
	</table>

	<form action="<c:url value='views/registration' />" method="post"
		id="float_left">
		<input type="submit" value="Edit Address">
	</form>

	<form action="<c:url value='/order/displayCreditCard' />" method="post">
		<input type="submit" value="Continue">
	</form>

	</section>

	<!-- end middle column -->

	<jsp:include page="footer.jsp" />

</body>
</html>