<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Reports</title>
</head>
<body>
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>        
<h2 id="msg">Select Reports</h2><br/>
<a href="<%=resultPath%>/users/all">View list of all candidates</a><br/>
<a href="<%=resultPath%>/tests/all">View list of all tests taken</a><br/>
<a href="<%=resultPath%>/">Logout</a>
</body>
</html>