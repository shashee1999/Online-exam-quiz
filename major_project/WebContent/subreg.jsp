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
String subcode=request.getParameter("subcode");
String subname=request.getParameter("subname");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/quiz","root","shashee");
	PreparedStatement p=c.prepareStatement("insert into subject values(?,?)");
	p.setString(1,subcode);
	p.setString(2,subname);
	int i=p.executeUpdate();
	if(i>0)
	{
		out.print("Subject code and name register Sucessfully ");
	}
	else{
		out.print("Please try again");
		response.sendRedirect("subject.jsp");
	}
	
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>