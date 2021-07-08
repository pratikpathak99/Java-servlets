<%-- 
    Document   : Blogger_Home_Page
    Created on : Jun 10, 2021, 5:27:31 PM
    Author     : Pratik Pathak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head><meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Home Page</title>
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
</head>
<body class="crm_body_bg">
<nav class="sidebar">
    <div class="logo d-flex justify-content-between">
        <a href="Blogger_Home_Page.jsp"><p> Blogging System </p></a>
        <div class="sidebar_close_icon d-lg-none">
            <i class="ti-close"></i>
        </div>
    </div>
    <ul id="sidebar_menu">
        <li class="">
          <a class="has-arrow"  href="#"  aria-expanded="false">
          <!-- <i class="fas fa-th"></i> -->
          <img src="img/menu-icon/1.svg" alt="">
            <span>Dashboard</span>
          </a>
          <ul>
            <li><a href="Blogger_Home_Page.jsp">Home</a></li>
            <li><a href="../Blog_Website/Home_Page.jsp">Blog Page</a></li>
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
                            <div class="search_inner">
                                
                            </div>
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
        <div class="container-fluid plr_30 body_white_bg pt_30">
            <div class="row justify-content-center">
                <div class="col-lg-12">
                    <div class="single_element">
                        <div class="quick_activity">
                            <div class="row">
                                <div class="col-12">
                                    <div class="quick_activity_wrap">
                                        <div class="single_quick_activity">
                                            <h4>Total Public Blog</h4>
                                            <h3><svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                                <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                                                <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                                                </svg> <span class="counter"><% out.print(session.getAttribute("User_PubliS_Count"));%></span> </h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>                
            </div>
        </div>
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
<script src="js/custom.js"></script>
<script src="js/active_chart.js"></script>
</body>
</html>
