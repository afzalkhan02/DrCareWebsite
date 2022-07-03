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
	String ID = request.getParameter("txtID");
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
	String query ="UPDATE appointment SET NAME='"+Name+"', Age='"+Age+"', Department='"+Department+"',	Mobile='"+Mobile+"', DATE='"+Date+"', TIME='"+Time+"', Description='"+Description+"', TransDate=CURDATE(), IsActive=1 WHERE PAID=2";
	int flag = st.executeUpdate(query);
	
	if(flag==1)
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Your Appointment Updated Successfully, We will inforam your soon.');");
	   	out.println("location='addAppointment.jsp';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Unable to Update your Appointment, Please Try Again!!!');");
	   	out.println("location='addAppointment.jsp';");
	   	out.println("</script>");
	}
	%>
</body>
</html>