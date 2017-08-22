<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign in</title>
<style>
.form-inline{
padding-left: 50px;
}</style>
</head>
<br>
<br>
<br>
<br>

<body background="resources\images\AdobeStock_88282716.jpeg" style="background-size:cover"> 

         <h3> Sign in to access your Orders, Wishlist and Recommendations.</h3>

${error }
${logout }
${registrationSuccess }

<form action="<c:url value="j_spring_security_check"></c:url>" method="post"  class="form-inline" padding-left="10px"><br>
   
    <div class="input-group">
     <label for="email">Email address:</label>
      <input type="text" id="email" name="j_username" class="form-control" size="46" placeholder="Email Address Or Usernames" required>
      
    </div><br>

<br>
<div class="input-group">
 <label for="pwd">Password:</label>
      <input type="password" id="pwd" name="j_password" class="form-control" size="50" placeholder="Password" required>
    </div><br>
<br>
<div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <br>
  <br>
<input type="submit" value="submit" align="center"><br>
</form>
</body>
</html>