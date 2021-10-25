<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Test Details</title>
</head>
<body>      
<label><h1>List of Candidates and Tests</h1></label>
<table border="1">
<tr>
<th align="left">Test Date</th>
<th align="left">Assessment</th>
<th align="left">Test Marks</th>
<th align="left">Email ID</th>
<th align="left">Total Marks</th>
<th align="left">Result</th>
</tr>
<c:forEach var="assess" items="${assess}" varStatus="Index">
<tr>
<td id="testDate${Index.count}"><c:out value="${assess.date}"/> </td>
<td id="assessment${Index.count}"><c:out value="${assess.assessment}"/> </td>
<td id="marks${Index.count}"><c:out value="${assess.marks}"/> </td>
<td id="email${Index.count}"><c:out value="${assess.email}"/> </td>
<td id="totalMarks${Index.count}"><c:out value="${assess.tmarks}"/> </td>
<td id="result${Index.count}"><c:out value="${assess.result}"/> </td>
</tr>
</c:forEach>
</table>
</body>
</html>