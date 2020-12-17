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
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/quiz","root","shashee");
	PreparedStatement p=c.prepareStatement("select * from student where(rollno=?&&name=?)");
	p.setString(1,rollno);
	p.setString(2,name);
	
	ResultSet r=p.executeQuery();
	if(r.next())
	{
		response.sendRedirect("Welcome.jsp");
	}
	else{
		out.print("Incorrect roll no or name");
		response.sendRedirect("slogin.jsp");
	}
	
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>