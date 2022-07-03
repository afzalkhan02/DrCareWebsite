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
                <!--header end--><br/>
                
                        <div class="col-md-12 chit-chat-layer1-rit">
                            <div class="work-progres">
                                <div class="chit-chat-heading">
                                    Add Department
                                </div>
                                <br />
                                <div class="compose-block">
                                    <input type="text" name="txtDepartName" placeholder="Enter Department" class="form-control" required="">
                                    <br />
                                    <input type="text" name="txtDepartDetail" placeholder="Enter Detail" class="form-control" required="">
                                    <br />
                                    <input type="text" name="txtPrimary" placeholder="Enter Primary care" Class="form-control" required="">
                                    <br />
                                    <input type="file" name=""  Class="form-control" required="">
                                    
                                    <br />
                                    <div class="login-block" style="padding: 0.5em 0.5em;">
                                        <input type="submit" name="btnSubmit" id="" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        </div>
                
                
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