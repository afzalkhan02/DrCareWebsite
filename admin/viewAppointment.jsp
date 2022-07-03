<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dr.Care</title>
</head>
<body>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/drcare","root","root");
		
		Statement st=con.createStatement();
		
		String query="SELECT * FROM Appointment WHERE IsActive=TRUE";
		ResultSet rs=st.executeQuery(query);
	%>
	<div class="page-container">
        <div class="left-content">
            <div class="mother-grid-inner">
                <!--header start-->
                <%@ include file="header.jsp" %>
                <!--header end--><br />
                
                <div class="col-md-12 chit-chat-layer1-left margin-5px;">
                <div class="work-progres">
                    <div class="chit-chat-heading">
                        Appointment List
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                               <tr>
                                   <th>#</th>
                                   <th>Name</th>
                                   <th>Age</th>
                                   <th>Mobile</th>
                                   <th>Department</th>
                                   <th>Date</th>
                                   <th>Time</th>
                                   <th>Description</th>
                                   <th>Request Date</th>
                                   <th>Action</th>
                               </tr>
                            </thead>
                            <tbody>
                               <% 
							int i = 1;
							while(rs.next()){ %>
							<tr>
								<td><%=i %></td>
								<td><%=rs.getString(2)%></td>
								<td><%=rs.getString(3)%></td>
								<td><%=rs.getString(5)%></td>
								<td><%=rs.getString(4)%></td>
								<td><%=rs.getString(6)%></td>
								<td><%=rs.getString(7)%></td>
								<td><%=rs.getString(8)%></td>
								<td><%=rs.getString(9)%></td>
								<td><a href="editAppointment.jsp?PAID=<%=rs.getString(1)%>">Edit</a> | <a href="AppointmentDelete.jsp?PAID=<%=rs.getString(1)%>">Delete</a></td>
						 	</tr>	
						 	<%i++;} %>
						 	                              
                            <tbody>
                        </table>
                    </div>
                </div>
            </div>
                <div class="copyrights">
                    <p style="color: teal;">&copy; <span id="year"></span> Drcare. All Rights Reserved | <a href="https://www.trainingatinfoseek.com/" target="_blank">Design By : T@I</a> </p>
                </div>
            </div>
        </div>
        
        <!--slider menu-->  
		<%@ include file="menu.jsp" %>
        <!--slider menu-->
        
        <div class="clearfix"></div>
    </div>
</body>
</html>