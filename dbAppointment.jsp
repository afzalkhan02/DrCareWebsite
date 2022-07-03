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
	String Name = request.getParameter("txtName");
	String Age = request.getParameter("txtAge");
	String Mobile = request.getParameter("txtMobile");
	String Department = request.getParameter("txtDepartment");
	String Date = request.getParameter("txtDate");
	String Time = request.getParameter("txtTime");
	String Description = request.getParameter("txtDescription");
			
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/drcare","root","root");
	Statement st = con.createStatement();
	String query ="INSERT INTO Appointment(NAME, Age, Department, Mobile, DATE, TIME, Description, TransDate, IsActive)VALUES('"+Name+"', "+Age+", '"+Department+"', '"+Mobile+"', '"+Date+"', '"+Time+"','"+Description+"',CURDATE(), 1)";
	int flag = st.executeUpdate(query);
	
	if(flag==1)
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Your Appointment Schedule Successfully, We will inforam your soon.');");
	   	out.println("location='index.jsp';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Unable to schedule your Appointment, Please Try Again!!!');");
	   	out.println("location='index.jsp';");
	   	out.println("</script>");
	}
	%>
</body>
</html>