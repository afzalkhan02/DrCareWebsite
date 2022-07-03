<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dr. Care</title>
    
</head>
<body>
<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/drcare","root","root");
		Statement st=con.createStatement();
		String query="select * from contact";
		ResultSet rs=st.executeQuery(query);
	%>
	<div class="page-container">
        <div class="left-content">
            <div class="mother-grid-inner">
                <!--header start-->
                <%@ include file="header.jsp" %>
                <!--header end--><br />
            <div class="col-md-12 chit-chat-layer1-left">
                <div class="work-progres">
                    <div class="chit-chat-heading">
                        Contact List
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                               <tr>
                                   <th>#</th>
                                   <th>Name</th>
                                   <th>Email</th>
                                   <th>Mobile</th>
                                   <th>Subject</th>
                                   <th>Message</th>
                                   <th>Date</th>
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
									<td><%=rs.getString(4)%></td>
									<td><%=rs.getString(5)%></td>
									<td><%=rs.getString(6)%></td>
									<td><%=rs.getString(7)%></td>
						   		</tr>	  
							 	<%i++;} %>                             
                            <tbody>
                        </table>
                    </div>
                </div>
            </div>
         
            <div class="clearfix"></div>
        </div><br />
                
                
                <div class="copyrights">
                    <p style="color: teal;">&copy; <span id="year"></span> Dr.Care All Rights Reserved | <a href="https://www.trainingatinfoseek.com/" target="_blank">Design By : T@I</a> </p>
                </div>
            </div>
        
        <!--slider menu-->  
		<%@ include file="menu.jsp" %>
        <!--slider menu-->
        
        <div class="clearfix"></div>
   </div>
</body>
</html>