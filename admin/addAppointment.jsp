<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dr.Care</title>
</head>
<body>
<div class="page-container">
        <div class="left-content">
            <div class="mother-grid-inner">
                <!--header start-->
                <%@ include file="header.jsp" %>
                <!--header end--><br/><br/><br/><br/>
                 <form action="dbAppointment.jsp" class="appointment-form ftco-animate">
                        <div class="col-md-12 chit-chat-layer1-rit">
                            <div class="work-progres">
                                <div class="chit-chat-heading">
                                    Add Appointment
                                </div>
                                <br />
                                <div class="compose-block">
                                    <input type="text" name="txtName" placeholder="Patient Name" class="form-control" required="">
                                    <br />
                                    <input type="text" name="txtAge" placeholder="Age (Years)" class="form-control" required="">
                                    <br />
                                    <input type="text" name="txtMobile" pattern="[0-9]{10,10}" placeholder="Mobile No." Class="form-control" required="">
                                    <br />
                                    	<select name="txtDepartment" class="form-control" >
                                            <option value="Null">Select Department</option>                                            
                                            <option value="Cardiology">Cardiology</option>              
                                            <option value="Dental">Dental</option>
                                            <option value="General Physician">General Physician</option>                                                                         
                                            <option value="Neurology" >Neurology</option>
                                            <option value="Other Services">Other Services</option>
                                        </select>
                                    <br />
                                    <input type="date" class="form-control appointment_date" required="" name="txtDate" placeholder="Preferred Date">
                                    <br />
                                    <input type="time" class="form-control appointment_time" required="" name="txtTime"  placeholder="Preferred Time">
                                    <br />
                                    <textarea name="txtDescription" cols="30" rows="2" class="form-control" required="" placeholder="Patient Description"></textarea>
                                    <br />
                                    <div class="login-block" style="padding: 0.5em 0.5em;">
                                        <input type="submit" name="btnSubmit" id="" class="btn btn-primary" value="Appointment">
                                    </div>
                                </div>
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