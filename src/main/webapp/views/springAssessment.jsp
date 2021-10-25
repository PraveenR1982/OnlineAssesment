<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring Assessment</title>
</head>
<body>
<% String resultPath= request.getScheme() +"://"+ request.getServerName() +":"+ request.getServerPort() + request.getContextPath(); %>        
<h1>Spring Assessment</h1><hr />
<form action="<%=resultPath%>/evaluate/spring/test" method="post">
<label>Question 1: What is spring?</label><br />
<input type="radio" id="Q1-Opt1" name="Question1" value="J2EE App Server"/>J2EE App Server<br />
<input type="radio" id="Q1-Opt2" name="Question1" value="J2EE App Development Framework" />J2EE App Development Framework<br/>
<input type="radio" id="Q1-Opt3" name="Question1" value="Configuration Management Tool" />Configuration Management Tool<br />
<input type="radio" id="Q1-Opt4" name="Question1"value="Build Tool"/>Build Tool<br /><br /><br />
<label>Question 2: What is the full form of IOC?</label><br />
<input type="radio" id="Q2-Opt1" name="Question2"value="Inversion Of Control"/>Inversion Of Control<br />
<input type="radio" id="Q2-Opt2" name="Question2" value="Interjection of Control" />Interjection of Control<br/>
<input type="radio" id="Q2-Opt3" name="Question2" value="Internal Object Control" />Internal Object Control<br />
<input type="radio" id="Q2-Opt4" name="Question2" value="In-built Object Control">In-built Object Control<br /><br />
<label>Question 3: What is the full form of AOP?</label><br />
<input type="radio" id="Q3-Opt1" name="Question3" value="Anticipation of Properties"/>Anticipation of Properties<br />
<input type="radio" id="Q3-Opt2" name="Question3" value="Aspect Oriented Programming" />Aspect Oriented Programming<br/>
<input type="radio" id="Q3-Opt3" name="Question3" value="Associated Object Programming" />Associated Object Programming<br />
<input type="radio" id="Q3-Opt4" name="Question3" value="Anti Object Programming">Anti Object Programming<br /><br />
<label>Question 4: Which of the below is a spring container?</label><br />
<input type="radio" id="Q4-Opt1" name="Question4" value="View Resolver"/>View Resolver<br />
<input type="radio" id="Q4-Opt2" name="Question4" value="Application Context" />Application Context<br/>
<input type="radio" id="Q4-Opt3" name="Question4" value="Handler Mapping"/>Handler Mapping<br />
<input type="radio" id="Q4-Opt4" name="Question4" value="Dispatcher Servlet">Dispatcher Servlet<br /><br />
<label>Which is Spring's front Controller Implementation?</label><br />
<input type="radio" id="Q5-Opt1" name="Question5" value="Bean Factory">Bean Factory<br />
<input type="radio" id="Q5-Opt2" name="Question5" value="Class Path Application Context" />Class Path Application Context<br/>
<input type="radio" id="Q5-Opt3" name="Question5" value="Application Context"/>Application Context<br />
<input type="radio" id="Q5-Opt4" name="Question5" value="Dispatcher Servlet">Dispatcher Servlet<br /><br /><br />
<button  id="submitspring" type="submit">Submit</button>
</form>
</body>
</html>