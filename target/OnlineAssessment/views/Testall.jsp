<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All User Details</title>
</head>
<body>       
<label><h1>List of All Users</h1></label>
<table border="1">
<tr>
<th align="left">First Name</th>
<th align="left">Last Name</th>
<th align="left">Email ID</th>
<th align="left">User Type</th>

</tr>
<c:forEach var="users" items="${users}" varStatus="Index">
<tr>
<td id="firstName${Index.count}"><c:out value="${users.firstname}"/> </td>
<td id="lastName${Index.count}"><c:out value="${users.lastname}"/> </td>
<td id="email${Index.count}"><c:out value="${users.email}"/> </td>
<td id="userType${Index.count}"><c:out value="${users.usertype}"/> </td>
</tr>
</c:forEach>
</table>
</body>
</html>