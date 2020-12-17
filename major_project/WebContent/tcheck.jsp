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
String name=request.getParameter("tun");
String password=request.getParameter("password");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/quiz","root","shashee");
	PreparedStatement p=c.prepareStatement("select * from teacher where tun=? && password=?");
	p.setString(1,name);
	p.setString(2,password);
	
	ResultSet r=p.executeQuery();
	if(r.next())
	{
		response.sendRedirect("Welcome.jsp");
	}
	else{
		out.print("Incorrect username or password");
		response.sendRedirect("tlogin.jsp");
	}
	
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>