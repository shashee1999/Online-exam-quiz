<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%
String rollno=request.getParameter("rollno");
String name=request.getParameter("name");
String branch=request.getParameter("branch");
String email=request.getParameter("email");
String gender=request.getParameter("gender");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/quiz","root","shashee");
	PreparedStatement p=c.prepareStatement("insert into student values(?,?,?,?,?)");
	p.setString(1,rollno);
	p.setString(2,name);
	p.setString(3,branch);
	p.setString(4,email);
	p.setString(5,gender);
	int i=p.executeUpdate();
	if(i>0)
	{
		out.print("Sucessfully registerd!");
	}
	else{
		out.print("Please try again");
		response.sendRedirect("sreg.jsp");
	}
	
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>