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
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
		String ID = request.getParameter("PAID");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/drcare","root","root");
		
		Statement st=con.createStatement();
		
		String query="SELECT * FROM Appointment WHERE PAID='"+ID+"' and IsActive=1";
		ResultSet rs=st.executeQuery(query);
		 
			
	%>
	<div class="page-container">
        <div class="left-content">
            <div class="mother-grid-inner">
                <!--header start-->
                <%@ include file="header.jsp" %>
                <!--header end--><br/><br/><br/><br/>
                 <form action="udbAppointment.jsp" class="appointment-form ftco-animate">
                        <div class="col-md-12 chit-chat-layer1-rit">
                            <div class="work-progres">
                                <div class="chit-chat-heading">
                                    Edit Appointment
                                </div><br />
                                <% int i = 1;
									while(rs.next()){ %>
                                <div class="compose-block">
                                	<label id="txtID" value="<%=rs.getString(1)%>">Appointment ID : <%=rs.getString(1)%></label>
                                    <input type="text" name="txtName" placeholder="Patient Name" class="form-control" value="<%=rs.getString(2)%>" required="required">
                                    <br />
                                    <input type="text" name="txtAge" placeholder="Age (Years)" class="form-control" value="<%=rs.getString(3)%>" required="required">
                                    <br />
                                    <input type="text" name="txtMobile" pattern="[0-9]{10,10}" placeholder="Mobile No." Class="form-control" value="<%=rs.getString(5)%>" required="required">
                                    <br />
                                    	<select name="txtDepartment" class="form-control" selected="<%=rs.getString(4)%>">
                                            <option value="Null">Select Department</option>                                            
                                            <option value="Cardiology">Cardiology</option>              
                                            <option value="Dental">Dental</option>
                                            <option value="General Physician">General Physician</option>                                                                         
                                            <option value="Neurology" >Neurology</option>
                                            <option value="Other Services">Other Services</option>
                                        </select>
                                    <br />
                                    <input type="text" class="form-control appointment_date" value='<%=rs.getString(6)%>' name="txtDate" placeholder="Preferred Date" required="required" />
                                    <br />
                                    <input type="text" class="form-control appointment_time" value="<%=rs.getString(7)%>" name="txtTime"  placeholder="Preferred Time" required="required"/>
                                    <br />
                                    <input type="text" class="form-control"  value="<%=rs.getString(8)%>" name="txtDescription" placeholder="Patient Description" required="required"/>
                                    <br />
                                    <div class="login-block" style="padding: 0.5em 0.5em;">
                                        <input type="submit" name="btnSubmit" id="" class="btn btn-primary" value="Appointment">
                                    </div>
                                </div>
                                <%i++;} %>
                            </div>
                        </div>
                
                </form>
                <div class="copyrights">
                    <p style="color: teal;">&copy; <span id="year"></span> Dr.Care All Rights Reserved | <a href="https://www.trainingatinfoseek.com/" target="_blank">Design By : T@I</a> </p>
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