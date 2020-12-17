<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add Question</h1>
<form action="ques.jsp" method="post">
<table>
<tr><td>Subject code:</td><td><input type="text" name="subcode"/></td></tr>
<tr><td>Question:</td><td><input type="text" name="question"/></td></tr>
<tr><td>Option (a):</td><td><input type="text" name="option1"/></td></tr>
<tr><td>Option (b):</td><td><input type="text" name="option2"/></td></tr>
<tr><td>Option (c):</td><td><input type="text" name="option3"/></td></tr>
<tr><td>Option (d):</td><td><input type="text" name="option4"/></td></tr>
<tr><td>Answere:</td><td><input type="text" name="answere"/></td></tr>

<tr><td colspan="2"><input type="submit" value="Upload"/></td></tr>
</table>
</body>
</html>