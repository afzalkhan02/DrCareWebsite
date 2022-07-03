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
	String Email = request.getParameter("txtEmail");
	String Mobile = request.getParameter("txtMobile");
	String Subject = request.getParameter("txtSubject");
	String Message = request.getParameter("txtMessage");
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/drcare","root","root");
	Statement st = con.createStatement();
	String query ="INSERT INTO Contact (NAME, EMAIL, MOBILE, SUBJECT, MESSAGE, TransDate)VALUES('"+Name+"','"+Email+"','"+Mobile+"','"+Subject+"','"+Message+"',CURDATE())";
	int flag = st.executeUpdate(query);
	
	if(flag==1)
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Message Send Successfully!!!');");
	   	out.println("location='contact.jsp';");
	   	out.println("</script>");
	}
	else
	{
		PrintWriter outa = response.getWriter();
		out.println("<script type=\"text/javascript\">");
	   	out.println("alert('Message Not Send Successfully, Please Try Again!!!');");
	   	out.println("location='contact.jsp';");
	   	out.println("</script>");
	}
	%>
</body>
</html>