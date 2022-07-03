<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <title>Dr.Care/Dashboard </title>
</head>

<body>
<%@page import="java.io.*" %>
<%
	if(session == null)
	{
		session.setAttribute("UN", null);
		response.sendRedirect("index.jsp");
	}

%>
    <div class="page-container">
        <div class="left-content">
            <div class="mother-grid-inner">
           		<!--header start-->
           		
                <%@ include file="header.jsp" %>
                <!--header end-->
                <div class="inner-block" style="height:1000px;">
                    <div class="market-updates">
                       
                   <!--  
                      <div class="col-md-4 market-update-gd" style="margin-top:10px;margin-bottom:10px;">
                            <a href="ViewDepartment.html">
                                <div class="market-update-block clr-block-1">
                                    <div class="col-md-8 market-update-left">
                                        <h3><label></label></h3>
                                        <h4>Department</h4>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-hospital-o" style="font-size: 3em;color:teal;width: 80px;height: 80px;background: #fff;text-align: center;border-radius: 49px;-webkit-border-radius: 49px;-moz-border-radius:49px;-o-border-radius:49px;line-height: 1.7em;"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4 market-update-gd" style="margin-top:10px;margin-bottom:10px;">
                            <a href="ViewDepartment.html">
                                <div class="market-update-block clr-block-1">
                                    <div class="col-md-8 market-update-left">
                                        <h3><label></label></h3>
                                        <h4>Services</h4>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-star" style="font-size: 3em;color:teal;width: 80px;height: 80px;background: #fff;text-align: center;border-radius: 49px;-webkit-border-radius: 49px;-moz-border-radius:49px;-o-border-radius:49px;line-height: 1.7em;"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        
                        
                        <div class="col-md-4 market-update-gd" style="margin-top:10px;margin-bottom:10px;">
                            <a href="users.html">
                                <div class="market-update-block clr-block-1">
                                    <div class="col-md-8 market-update-left">
                                        <h3><label></label></h3>
                                        <h4>Testimonials</h4>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-comments" style="font-size: 3em;color:teal;width: 80px;height: 80px;background: #fff;text-align: center;border-radius: 49px;-webkit-border-radius: 49px;-moz-border-radius:49px;-o-border-radius:49px;line-height: 1.7em;"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        
                        <div class="col-md-4 market-update-gd" style="margin-top:10px;margin-bottom:10px;">
                            <a href="viewFAQ.jsp">
                                <div class="market-update-block clr-block-1">
                                    <div class="col-md-8 market-update-left">
                                        <h3><label></label></h3>
                                        <h4>FAQs</h4>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-question-circle" style="font-size: 3em;color:teal;width: 80px;height: 80px;background: #fff;text-align: center;border-radius: 49px;-webkit-border-radius: 49px;-moz-border-radius:49px;-o-border-radius:49px;line-height: 1.7em;"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        
                        -->  
                        <div class="col-md-4 market-update-gd" style="margin-top:10px;margin-bottom:10px;">
                            <a href="viewAppointment.jsp">
                                <div class="market-update-block clr-block-1">
                                    <div class="col-md-8 market-update-left">
                                        <h3><label></label></h3>
                                        <h4>Appointment</h4>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-calendar" style="font-size: 3em;color:teal;width: 80px;height: 80px;background: #fff;text-align: center;border-radius: 49px;-webkit-border-radius: 49px;-moz-border-radius:49px;-o-border-radius:49px;line-height: 1.7em;"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        
                        <div class="col-md-4 market-update-gd" style="margin-top:10px;margin-bottom:10px;">
                            <a href="contact.jsp">
                                <div class="market-update-block clr-block-1">
                                    <div class="col-md-8 market-update-left">
                                        <h3><label></label></h3>
                                        <h4>Contacts</h4>
                                    </div>
                                    <div class="col-md-4 market-update-right">
                                        <i class="fa fa-envelope-o" style="font-size: 3em;color:teal;width: 80px;height: 80px;background: #fff;text-align: center;border-radius: 49px;-webkit-border-radius: 49px;-moz-border-radius:49px;-o-border-radius:49px;line-height: 1.7em;"></i>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                        <div class="clearfix"></div>
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