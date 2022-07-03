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
		<div class="header-main">
                    <div class="header-left">
                        <div class="logo-name">
                            <a href="dashboard.html">
                                <img src="images/DrCare1.png" alt="DrCare" />
                            </a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="header-right">
                        <div class="profile_details">
                            <ul>
                                <li class="dropdown profile_details_drop">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <div class="profile_img">
                                            <span class="prfil-img">
                                                <img src="images/loginImg.png" style="height:50px;width:50px;" />
                                                <br />
                                            </span>
                                            <div class="user-name">
                                               <p style="color: teal;">
                                                   <span id="lblUserName">Dr. Care</span>
                                               </p>
                                               <p><span id="lblRoll">Administrator</span></p>
                                            </div>
                                            <i class="fa fa-angle-down lnr"></i>
                                            <i class="fa fa-angle-up lnr"></i>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                    <ul class="dropdown-menu drp-mnu">
                                     <!--    <li><a href="#"><i class="fa fa-cog"></i>Settings</a> </li>
                                        <li><a href="#"><i class="fa fa-user"></i>Profile</a> </li>--> 
                                        <li><a href="index.jsp"><i class="fa fa-sign-out"></i>Logout</a> </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                
                 <!-- script-for sticky-nav -->
                <script>
                $(document).ready(function() {
                    var navoffeset = $(".header-main").offset().top;
                    $(window).scroll(function() {
                        var scrollpos = $(window).scrollTop();
                        if (scrollpos >= navoffeset) {
                            $(".header-main").addClass("fixed");
                        } else {
                            $(".header-main").removeClass("fixed");
                        }
                    });

                });
                </script>
                <!-- /script-for sticky-nav -->
</body>
</html>