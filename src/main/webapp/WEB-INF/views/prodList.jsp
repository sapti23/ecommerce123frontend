<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
$(document).ready(function() {
	var searchCondition = '${searchCondition}';
	$('.table').DataTable({
		"lengthMenu" : [ [ 3, 5, 7, -1 ], [ 3, 5, 7, "All" ] ],
		"oSearch" : {
			"sSearch" : searchCondition
		}
	})
});
</script>
</head>
<body>
<hr>
<hr>
	<div class="container">

		<table class="table table-striped" border="1">
		<thead>
			<tr>
				<th>Image</th>
				<th>Product Name</th>
				<th>Price</th>
				<th>Category</th>
				<th>Action</th>
			</tr>
         </thead>
			<c:forEach items="${products}" var="p">
				<tr>
					<url:url value="/resources/images/${p.id }.png" var="url"></url:url>
					<td><img src="${url }" height="50" width="50"></td>
					<td>${p.name}</td>
					<td>${p.price }</td>
					<td>${p.category.categoryDetails }</td>
					<url:url value="/all/product/viewproduct/${p.id }" var="url"></url:url>

					<td>
					<a href="${url }"><span
							class="glyphicon glyphicon-info-sign"></span></a> 
						
							<security:authorize access="hasRole('ROLE_ADMIN')">
							<url:url
							value="/admin/product/editproduct/${p.id }" var="url2"></url:url>
						<a href="${url2 }"><span class="glyphicon glyphicon-pencil"></span></a>


						<url:url value="/admin/product/deleteproduct/${p.id }" var="url1"></url:url>
						<a href="${url1 }"><span class="glyphicon glyphicon-trash"></span></a>
						</security:authorize>
					<url:url value="/customer/product/${p.id }" var="url3"></url:url>
					<a href="${url3 }"><span
							class="glyphicon glyphicon-shopping-cart"></span></a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
