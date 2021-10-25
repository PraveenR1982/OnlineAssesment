<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Failure Page</title>
</head>
<body>
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>        
<h1 id="msg">Sorry !!! Better Luck Next Time !!!</h1>
<a href="<%=resultPath%>/">Exit</a>
</body>
</html>