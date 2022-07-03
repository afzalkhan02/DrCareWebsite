<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript">
    addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);

    function hideURLbar() { window.scrollTo(0, 1); }
    </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--js-->
    <script src="js/jquery-2.1.1.min.js"></script>
    <!--icons-css-->
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!--Google Fonts-->
    <link href='//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css' />
    <!--//skycons-icons-->
</head>
<body>
<div class="sidebar-menu" style="background-color: teal;">
            <div class="logo">
                <a href="#" class="sidebar-icon"><span class="fa fa-bars"></span></a><a href="#"><span id="logo"></span>
                </a>
            </div>
            <div class="menu" style="background-color: teal;">
                <ul id="menu">
                    <li id="menu-home"><a href="dashboard.jsp"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
                      <!--  
                    <li><a href="#"><i class="fa fa-hospital-o" aria-hidden="true"></i><span>Departments</span><span class="fa fa-angle-right" style="float: right"></span></a>
                        <ul>
                            <li><a href="addDepartment.jsp">Add Department</a></li>
                            <li><a href="viewDepartment.jsp">View Department</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-user-md"></i><span>Doctors</span><span class="fa fa-angle-right" style="float: right"></span></a>
                        <ul>
                            <li><a href="addDoctor.jsp">Add Doctor</a></li>
                            <li><a href="viewDoctor.jsp">View Doctor</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-star"></i><span>Services</span><span class="fa fa-angle-right" style="float: right"></span></a>
                        <ul>
                            <li><a href="addService.jsp">Add Service</a></li>
                            <li><a href="viewService.jsp">View Service</a></li>
                        </ul>
                    </li>
                                    
                     <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i><span>Testimonials</span><span class="fa fa-angle-right" style="float: right"></span></a>
                        <ul>
                            <li><a href="addTestimonial.jsp">Add Testimonial</a></li>
                            <li><a href="viewTestimonial.jsp">View Testimonial</a></li>
                        </ul>
                    </li>
                    
                     <li><a href="#"><i class="fa fa-question-circle" aria-hidden="true"></i><span>FAQs</span><span class="fa fa-angle-right" style="float: right"></span></a>
                        <ul>
                            <li><a href="addFAQ.jsp">Add FAQ</a></li>
                            <li><a href="viewFAQ.jsp">View FAQ</a></li>
                        </ul>
                    </li>
                  -->
                     <li><a href="#"><i class="fa fa-calendar" aria-hidden="true"></i><span>Appointments</span><span class="fa fa-angle-right" style="float: right"></span></a>
                        <ul>
                            <li><a href="addAppointment.jsp">Add Appointment</a></li>
                            <li><a href="viewAppointment.jsp">View Appointment</a></li>
                        </ul>
                    </li>   
                    <li><a href="contact.jsp"><i class="fa fa-envelope-o" aria-hidden="true"></i><span>Contacts</span></a></li>
               </ul>
            </div>
        </div>
        
         <script>
    var toggle = true;

    $(".sidebar-icon").click(function() {
        if (toggle) {
            $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
            $("#menu span").css({ "position": "absolute" });
        } else {
            $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
            setTimeout(function() {
                $("#menu span").css({ "position": "relative" });
            }, 400);
        }
        toggle = !toggle;
    });
    </script>
    <script>
    document.getElementById("year").innerHTML = new Date().getFullYear();
    </script>
    <!--scrolling js-->
    <script src="js/jquery.nicescroll.js"></script>
    <script src="js/scripts.js"></script>
    <!--//scrolling js-->
    <script src="js/bootstrap.js"> </script>
    <!-- mother grid end here-->
</body>
</html>