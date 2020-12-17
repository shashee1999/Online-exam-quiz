<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String subcode=request.getParameter("subcode");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/quiz","root","shashee");
	PreparedStatement p=c.prepareStatement("select * from question where subcode=?");
	p.setString(1,subcode);
	ResultSet r=p.executeQuert();
	int i=1;
	%>
	<form action="result.jsp">
	<%
	while(r.next())
	{
	%>
	Q:<input type="text" name="n<%=i%>"  value="<%=r.getString(2)%>" size="100"><br>
	a)<input type="radio" name="op<%=i%>"  value="<%=r.getString(3)%>" ><%out.print(r.getString(3)); %><br>
	b)<input type="radio" name="op<%=i%>"  value="<%=r.getString(4)%>" ><%out.print(r.getString(4)); %><br>
	c)<input type="radio" name="op<%=i%>"  value="<%=r.getString(5)%>" ><%out.print(r.getString(5)); %><br>
	d)<input type="radio" name="op<%=i%>"  value="<%=r.getString(6)%>" ><%out.print(r.getString(6)); %><br>
	<input type="hidden" name="a<%=i%>" value="<%=r.getString(7)%>"><br>
	
	<%
	i++;
	}
i--;
	%>
	<input type="hidden" name="count" value="<%=i%>"><br>
	<input type="submit" value="click">
	</form>
</body>
</html>