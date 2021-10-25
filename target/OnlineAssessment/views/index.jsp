<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Assessment-Home Page</title>
</head>
<body style="background-color:honeydew;">
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>        
 
<div>
<h1>Welcome to online Assessments</h1>
<h3>Login</h3>
<form action="<%=resultPath%>/login/do" method="post">
<label>Email ID</label>&nbsp;&nbsp;<input type="email" id="email" name="email" required/><br />
<br/>
<label>Password</label>&nbsp;&nbsp;<input type="password" id="password" name="password" required/><br />
<br />
<button id="login" type="submit">Login</button>

</form>
<br />
<label>New User?</label><a href="<%=resultPath%>/register.html">register here</a>
</div>
</body>
</html>