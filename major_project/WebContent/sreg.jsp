<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Student Registration form</h1>
<form action="studentreg.jsp" method="post">
<table>
<tr><td>Roll No:</td><td><input type="text" name="rollno"/></td></tr>
<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>

<tr><td>Branch:</td><td>
<select name="branch" style="width:155px">
<option>Information Technology</option>
<option>Computer Science</option>
<option>Electronics Communication</option>
<option>Electrical and Electronics</option>
<option>CIVIL</option>
<option>Other</option>
</select>
</td></tr>
<tr><td>Email:</td><td><input type="email" name="email"/></td></tr>
<tr><td>Gender:
<input type="radio" name="gender" value="Female" checked> Female
<input type="radio" name="gender" value="Male" checked>Male
</td></tr>
<tr><td colspan="2"><input type="submit" value="Register"/></td></tr>
</table>
<br>
</form>
</body>
</html>