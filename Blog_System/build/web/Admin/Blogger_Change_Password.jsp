<%-- 
    Document   : Blogger_Change_Password
    Created on : Jun 10, 2021, 6:06:41 PM
    Author     : Pratik Pathak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Change User Password</title>
    <!-- <link rel="icon" href="img/favicon.png" type="image/png"> -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="vendors/themefy_icon/themify-icons.css" />
    <link rel="stylesheet" href="vendors/swiper_slider/css/swiper.min.css" />
    <link rel="stylesheet" href="vendors/select2/css/select2.min.css" />
    <link rel="stylesheet" href="vendors/niceselect/css/nice-select.css" />
    <link rel="stylesheet" href="vendors/owl_carousel/css/owl.carousel.css" />
    <link rel="stylesheet" href="vendors/gijgo/gijgo.min.css" />
    <link rel="stylesheet" href="vendors/font_awesome/css/all.min.css" />
    <link rel="stylesheet" href="vendors/tagsinput/tagsinput.css" />
    <link rel="stylesheet" href="vendors/datatable/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="vendors/datatable/css/responsive.dataTables.min.css" />
    <link rel="stylesheet" href="vendors/datatable/css/buttons.dataTables.min.css" />
    <link rel="stylesheet" href="vendors/text_editor/summernote-bs4.css" />
    <link rel="stylesheet" href="vendors/morris/morris.css">
    <link rel="stylesheet" href="vendors/material_icon/material-icons.css" />
    <link rel="stylesheet" href="css/metisMenu.css">
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/colors/default.css" id="colorSkinCSS">
    
    <style>
    * {
      box-sizing: border-box;
    }

    .container {
      padding: 16px;
      background-color: white;
    }

    input[type=text], input[type=password] {
      width: 100%;
      padding: 15px;
      margin: 5px 0 22px 0;
      display: inline-block;
      border: none;
      background: #f1f1f1;
    }

    input[type=text]:focus, input[type=password]:focus {
      background-color: #ddd;
      outline: none;
    }

    hr {
      border: 1px solid #f1f1f1;
      margin-bottom: 25px;
    }

    .registerbtn {
      background-color: #04AA6D;
      color: white;
      padding: 16px 20px;
      margin: 8px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      opacity: 0.9;
    }

    .registerbtn:hover {
      opacity: 1;
    }

    a {
      color: dodgerblue;
    }

    .signin {
      background-color: #f1f1f1;
      text-align: center;
    }
</style>
</head>
<body class="crm_body_bg">
<nav class="sidebar">
    <div class="logo d-flex justify-content-between">
        <a href="Blogger_Home_Page.jsp"><p>Blog System</p></a>
        <div class="sidebar_close_icon d-lg-none">
            <i class="ti-close"></i>
        </div>
    </div>
    <ul id="sidebar_menu">
        <li class="mm-active">
          <a class="has-arrow"  href="#"  aria-expanded="false">
          <!-- <i class="fas fa-th"></i> -->
          <img src="img/menu-icon/1.svg" alt="">
            <span>Dashboard</span>
          </a>
          <ul>
            <li><a class="active" href="Blogger_Home_Page.jsp">Home Page</a></li>
            <li><a href="New_Blog.jsp">New Blog</a></li>
          </ul>

        </li>
      </ul>
    
</nav>
<section class="main_content dashboard_part">
        <!-- menu  -->
    <div class="container-fluid no-gutters">
        <div class="row">
            <div class="col-lg-12 p-0">
                <div class="header_iner d-flex justify-content-between align-items-center">
                    <div class="sidebar_icon d-lg-none">
                        <i class="ti-menu"></i>
                    </div>
                    <div class="serach_field-area">
                            
                        </div>
                    <div class="header_right d-flex justify-content-between align-items-center">
                        
                        <div class="profile_info">
                            <h5> Welcome, <%
                                    String n=(String)session.getAttribute("uname");  
                                    out.print(n);  
                                %></h5>
                            <div class="profile_info_iner">
                                <p>Welcome Admin!</p>
                                <h5><%
                                    out.print(n);  
                                %></h5>
                                <div class="profile_info_details">
                                    <a href="Blogger_My_Profile.jsp">My Profile <i class="ti-user"></i></a>
                                    <a href="Blogger_Change_Password.jsp">Change Password<i class="ti-key"></i></a>
                                    <a href="../index.html">Log Out <i class="ti-shift-left"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main_content_iner ">
        <form action="../Blogger_Chenge_Password" method="POST">
            <div class="container">
            <h1>Change User Password</h1>
            <hr>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter User New Password" name="psw" id="psw" required>

            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Your New Password" name="psw_repeat" id="psw-repeat" required>

            <hr>
            <button type="submit" class="registerbtn">Cheng Password</button>
        </div>
    </form>
    </div>
    <div class="footer_part">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer_iner text-center">
                        <p>2021 © Blogging - Designed by Pratik Pathak</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>

<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/metisMenu.js"></script>
<script src="vendors/count_up/jquery.waypoints.min.js"></script>
<script src="vendors/chartlist/Chart.min.js"></script>
<script src="vendors/count_up/jquery.counterup.min.js"></script>
<script src="vendors/swiper_slider/js/swiper.min.js"></script>
<script src="vendors/niceselect/js/jquery.nice-select.min.js"></script>
<script src="vendors/owl_carousel/js/owl.carousel.min.js"></script>
<script src="vendors/gijgo/gijgo.min.js"></script>
<script src="vendors/datatable/js/jquery.dataTables.min.js"></script>
<script src="vendors/datatable/js/dataTables.responsive.min.js"></script>
<script src="vendors/datatable/js/dataTables.buttons.min.js"></script>
<script src="vendors/datatable/js/buttons.flash.min.js"></script>
<script src="vendors/datatable/js/jszip.min.js"></script>
<script src="vendors/datatable/js/pdfmake.min.js"></script>
<script src="vendors/datatable/js/vfs_fonts.js"></script>
<script src="vendors/datatable/js/buttons.html5.min.js"></script>
<script src="vendors/datatable/js/buttons.print.min.js"></script>
<script src="js/chart.min.js"></script>
<script src="vendors/progressbar/jquery.barfiller.js"></script>
<script src="vendors/tagsinput/tagsinput.js"></script>
<script src="vendors/text_editor/summernote-bs4.js"></script>
<script src="vendors/apex_chart/apexcharts.js"></script>
<script src="js/custom.js"></script>
<script src="js/active_chart.js"></script>
<script src="vendors/apex_chart/radial_active.js"></script>
<script src="vendors/apex_chart/stackbar.js"></script>
<script src="vendors/apex_chart/area_chart.js"></script>
<script src="vendors/apex_chart/bar_active_1.js"></script>
<script src="vendors/chartjs/chartjs_active.js"></script>
</body>
</html>