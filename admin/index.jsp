<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DrCare</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
<body style="background-image: url(&quot;../images/businessShakeHand.jpg&quot;); background-position: 0px -65.24px;">
    <div class="login-page" style="margin-top: -60px;">
            <div class="login-main" style="margin-bottom: -60px; opacity: 0.9;">
                <div class="login-head text-center" style="height: 200px;">
                    
                    <h2 style="color:black;">Login</h1>
                    <br />
                    <br />
                    <img src="images/DrCare1.png" alt="Dr Care logo" />
                    
                <hr style="height:2px;border-width:0;color:gray;background-color:gray" />
                </div>
                <h1 style="color: black; text-align: center"></h1>
                <div class="login-block">
                	<form action="AdminLogin.jsp" method="post">
                	<input type="text" placeholder="User Name" name="txtName" required="">
                	<input type="password" placeholder="User Password" class="lock" name="txtPassword" required="">
                    <div class="forgot-top-grids">
                        <div class="">
                            <ul>
                                <li>
                                    <input type="checkbox"  value="" name="chkRememberMe"/>
                                    <label for="chkRemember"><span></span>Remember me</label>
                                </li>
                            </ul>
                        </div>
                        <div class="forgot">
                            <a href="#">Forgot password?</a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <input type="submit" name="btnSubmit" value="Sign In" Style="background-color: teal;">
                </form>
                </div>
            </div>
        </div>
        <!--inner block end here-->
        <!--copy rights start here-->
        <div class="copyrights">
            <p style="background-color: teal;">© 2021 DrCare. All Rights Reserved | <a href="https://www.trainingatinfoseek.com/" target="_blank">Design By : T@I</a> </p>
        </div>
        <!--COPY rights end here-->

        <!--scrolling js-->
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
        <!--//scrolling js-->
        <script src="js/bootstrap.js"> </script>
        <!-- mother grid end here-->
</body>
</html>