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
                <!--header end--><br />
                
                <div class="col-md-12 chit-chat-layer1-left margin-5px;">
                <div class="work-progres">
                    <div class="chit-chat-heading">
                        Department List
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
                               </tr>
                            </thead>
                            <tbody>
                               <tr>
                                   <td>01</td>
                                   <td>XYZ-1</td>
                                   <td>xyz1@gmail.com</td>
                                   <td>9000000000</td>
                                   <td>Test-1</td>
                                   <td>This is a Test-1 Message...</td>
                               </tr> 
                               <tr>
                                   <td>02</td>
                                   <td>XYZ-2</td>
                                   <td>xyz2@gmail.com</td>
                                   <td>9000000000</td>
                                   <td>Test-2</td>
                                   <td>This is a Test-2 Message...</td>
                               </tr>                                
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