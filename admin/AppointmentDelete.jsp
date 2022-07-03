<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<% 
		String ID = request.getParameter("PAID");
		
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/drcare","root","root");
	
	Statement st = con.createStatement();
	
	String query ="DELETE FROM Appointment WHERE  PAID='"+ID+"'";
	 
	int flag = st.executeUpdate(query);
	
	if(flag==1)
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Appointment Deleted Successfully!!!');");
	   	out.println("location='viewAppointment.jsp';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Appointment Not Deleted Please Try Again. ');");
	   	out.println("location='viewAppointment.jsp';");
	   	out.println("</script>");
	}
	%>
</body>
</html>