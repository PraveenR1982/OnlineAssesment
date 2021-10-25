<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body style="background-color:azure;">
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>        
<div>
<h1>Registration</h1><br />
<form action="<%=resultPath%>/registration/do" method="post">
<label>First Name</label>&nbsp;&nbsp;<input type="text" id="firstname" name="firstname"pattern="[a-zA-Z]{1,}"required/><br/><br/>
<label>Last Name</label>&nbsp;&nbsp;<input type="text" id="lastname" name="lastname"pattern="[a-zA-Z]{1,}" required/><br/><br />
<label>Email ID</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" id="email" name="email" required/><br/><br />
<label>Password</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" id="password" name="password" pattern=".{8,}"  required/><br/><br />
<button id="register" name="submit" type="submit">REGISTER</button>
</form>
</div>
</body>
</html>