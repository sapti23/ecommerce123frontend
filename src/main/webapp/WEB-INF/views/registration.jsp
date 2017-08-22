<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
<style>
button {
    background-color: green;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 10%;
}

button:hover {
    opacity: 0.8;
}
.container {
    padding: 0.1px;
}
}
</style>
</head>
<body style="background-color:#fcebd4">
<br>
<br>
<div class="form-group">
    <h1 align="center"><b><i><u>Registration Form</u></i></b></h1>
</div>
<marquee><p style="font-size:35px;color:brown">Please Fill Details To Register</p></marquee>

<div class="container wrapper">
<div class="container">
<url:url value="/all/register" var="url"></url:url>
<form:form  action="${url }" modelAttribute="customer" method="post">
<div class="boxed" style= "border:8px solid">
<div class="form-group">
<label for="id"></label>
<form:hidden path="id" ></form:hidden>
<form:errors path="id" cssStyle="color:red"></form:errors>
</div>

<div class="container" style="color:black" align="center">
<label for="firstname"><h4><b>Enter First Name</b></h4></label>
<form:input path="firstname"></form:input>
<form:errors path="firstname" cssStyle="color:red"></form:errors>
</div>


<div class="container" style="color:black" align="center">
<label for="lastname"><h4><b>Enter Last Name</b></h4></label>
<form:input path="lastname"></form:input>
<form:errors path="lastname" cssStyle="color:red"></form:errors>
</div>

<div class="container" style="color:black" align="center">
<label for="email"><h4><b>Enter Email</b></h4></label>
<form:input path="email"></form:input>
<form:errors path="email" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateEmail }</span>
</div>

<div class="container" style="color:black" align="center">
<label for="phone"><h4><b>Enter Phone Number</b></h4></label>
<form:input path="phone"></form:input>
<form:errors path="phone" cssStyle="color:red"></form:errors>
</div>
</div>

<div class="container" style="color:brown">
    <h4 align="center"><b><i>Enter Login Details</i></b></h4>
	</div>

<div class="boxed" style= "border:8px solid">
<div class="form-group"  style="color:black" align="center">
<label for="users.username"><h4><b>Enter Username</b></h4></label>
<form:input path="users.username"></form:input>
<form:errors path="users.username" cssStyle="color:red"></form:errors>
<span style="color:red">${duplicateUsername }</span>
</div>


<div class="form-group"  style="color:black" align="center">
<label for="users.password"><h4><b>Enter Password</b></h4></label>
<form:input path="users.password" type="password"></form:input>
<form:errors path="users.password" cssStyle="color:red"></form:errors>
</div>
</div>
<div class="container"  style="color:brown" align="center">
    <h4 align="center"><b><i><b>Enter Billing Address</b></i></b></h4>
	</div>

<div class="boxed" style= "border:8px solid">
<div class="form-group"  style="color:black" align="center">
<label for="billingAddress.streetname"><h4><b>Enter Street Name</b></h4></label>
<form:input path="billingAddress.streetname"></form:input>
<form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>
</div>

<div class="form-group"  style="color:black" align="center">
<label for="billingAddress.apartmentnumber"><h4><b>Enter Apartment number</b></h4></label>
<form:input path="billingAddress.apartmentnumber"></form:input>
<form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>
</div>

<div class="form-group"  style="color:black" align="center">
<label for="billingAddress.city"><h4><b>Enter City</b></h4></label>
<form:input path="billingAddress.city"></form:input>
<form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>
</div>

<div class="form-group"  style="color:black" align="center">
<label for="billingAddress.country"><h4><b>Enter Country</b></h4></label>
<form:input path="billingAddress.country"></form:input>
<form:errors path="billingAddress.country" cssStyle="color:red"></form:errors>
</div>

<div class="form-group"  style="color:black" align="center">
<label for="billingAddress.zipcode"><h4><b>Enter Zipcode</b></h4></label>
<form:input path="billingAddress.zipcode"></form:input>
<form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>
</div>
</div>

<br>
 <div align="center" class="container">   
<input type="submit" value="Register" style="color:red "class="btn btn-lg btn-info">
</div>
</form:form></div>

</div>
</body>
</html>