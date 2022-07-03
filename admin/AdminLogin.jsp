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
	<!-- Log Out  --> 
	<%
		
		if(session != null)
		{
			session.setAttribute("UN", null);
			//response.sendRedirect("index.jsp");
		}
	
		//else{
			//request.getSession().setAttribute("UN", null);
			//response.sendRedirect("index.jsp");
			/*PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('You Accunt is Logout, Please Relogin...')");
			out.println("location='index.jsp';");
			out.println("</script>");*/
		//}
	%>
	<!-- Log Out  --> 
	<!-- Log In  --> 
	<%
	
		String Name = request.getParameter("txtName");
		String Password = request.getParameter("txtPassword");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/drcare","root","root");
		Statement st=con.createStatement();
		String query="SELECT * FROM adminlog WHERE UserName='"+Name+"' AND PASSWORD='"+Password+"' AND IsActive = 1";
		ResultSet rs=st.executeQuery(query);
		int flag = 0;
		
		while(rs.next()){
			flag++; 
		}
		if(flag>=1)
		{
			//HttpSession logss = request.getSession();
			//logss.setAttribute("UN", rs.getString(2).toString());	
			
			session.setAttribute("UN", Name);
			
			response.sendRedirect("dashboard.jsp");
		}
		else
		{			
			PrintWriter outa = response.getWriter();
			out.println("<script type=\"text/javascript\">");
		   	out.println("alert('Your User Name or Password is Incorrect, Please Try Again.');");
		   	out.println("location='index.jsp';");
		   	out.println("</script>");		   	
		}	
	
	%>
	<!-- Log In  --> 
</body>
</html>