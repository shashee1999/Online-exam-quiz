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
String question=request.getParameter("question");
String option1=request.getParameter("option1");
String option2=request.getParameter("option2");
String option3=request.getParameter("option3");
String option4=request.getParameter("option4");
String answere=request.getParameter("answere");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/quiz","root","shashee");
	PreparedStatement p=c.prepareStatement("insert into question values(?,?,?,?,?,?,?)");
	p.setString(1,subcode);
	p.setString(2,question);
	p.setString(3,option1);
	p.setString(4,option2);
	p.setString(5,option3);
	p.setString(6,option4);
	p.setString(7,answere);
	int i=p.executeUpdate();
	if(i>0)
	{
		out.print("Sucessfully registerd!");
	}
	else{
		out.print("Please try again");
		response.sendRedirect("questionform.jsp");
	}
	
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>