<%-- 
    Document   : View_Blog
    Created on : Jun 12, 2021, 6:01:10 PM
    Author     : Pratik Pathak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>View Blog</title>
	<link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
	<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"> <!-- https://fonts.google.com/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/templatemo-xtra-blog.css" rel="stylesheet">
</head>
<body>
	<header class="tm-header" id="tm-header">
        <div class="tm-header-wrapper">
            <button class="navbar-toggler" type="button" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="tm-site-header">
                <div class="mb-3 mx-auto tm-site-logo"><i class="fas fa-times fa-2x"></i></div>            
                <h1 class="text-center">Xtra Blog</h1>
            </div>
            <nav class="tm-nav" id="tm-nav">            
                <ul>
                    <li class="tm-nav-item"><a href="Home_Page.jsp" class="tm-nav-link">
                        <i class="fas fa-home"></i>
                        Blog Home
                    </a></li>
                </ul>
            </nav>
            
            <p class="tm-mb-80 pr-5 text-white">
                This is the OOT Project create by Pratik , Harit And Urvi.
            </p>
        </div>
    </header>
    <div class="container-fluid">
        <main class="tm-main">           
            <div class="row tm-row">                    
                <div class="mb-4">
                    <h2 class="pt-2 tm-color-primary tm-post-title"><% out.print((String)session.getAttribute("title"));%></h2>
                    <p class="tm-mb-40">posted by <% out.print((String)session.getAttribute("blog_w"));%></p>
                    <p>
                         <% out.print((String)session.getAttribute("data"));%>
                    </p>
                            
                </div>
            </div>
            <footer class="row tm-row">
                <div class="col-md-6 col-12 tm-color-gray">
                    Design by Pratik Pathak</a>
                </div>
            </footer>
        </main>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>
