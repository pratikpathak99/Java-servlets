<%-- 
    Document   : Home_Page
    Created on : Jun 11, 2021, 7:00:05 PM
    Author     : Pratik Pathak
--%>
<%@page import="java.util.Iterator"%>
<%@page import="Blog_System_Bean.Get_Set_Blog"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%  

            Configuration cfg = new Configuration();
            cfg.configure();
            SessionFactory sf=cfg.buildSessionFactory();
            Session sess = sf.openSession();
            String hql = "from Get_Set_Blog";
            Query qry = sess.createQuery(hql);
            List<Get_Set_Blog> orderList = qry.list();
            Iterator<Get_Set_Blog> it = orderList.iterator(); 
            List<String> list=new ArrayList<String>();  
            List<String> Blog_Title=new ArrayList<String>();
            List<String> Blog_User_Name=new ArrayList<String>();
            List<String> Blog_id=new ArrayList<String>();
            while(it.hasNext())  
            {  
                Get_Set_Blog e =it.next();
                list.add(e.getBlog_Data()); 
                Blog_Title.add(e.getBlog_title());
                Blog_User_Name.add(e.getBlog_User_Name());
            }
            sess.close();
            sf.close();
            int i=0;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Home Page</title>
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
                    <li class="tm-nav-item active"><a href="..\Admin/Blogger_Home_Page.jsp" class="tm-nav-link">
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
            <!-- Search form -->       
            <div class="row tm-row">
                 <%  
                    for(String fruit:list)  {
                     %>
                <article class="col-12 col-md-6 tm-post">
                    <hr class="tm-hr-primary">
                        <h2 class="tm-pt-30 tm-color-primary tm-post-title"><%  out.println(Blog_Title.get(i));%></h2>                  
                    <p class="tm-pt-30">
                        <%  out.println(fruit);  
                        %>
                    </p>
                    <div>
                        <form method="POST" action="../New_Full_Blog">
                            <input type="hidden" value="<%  out.println(Blog_Title.get(i));%>" name="Hidden_TextView"/>
                            <input type="hidden" value="<%  out.println(fruit);%>" name="Hidden_TextView_data"/>
                            <input type="hidden" value="<%  out.println(Blog_User_Name.get(i));%>" name="Hidden_TextView_w"/>
                            <input type="submit" value="Read More" class="btn btn-link"></input>
                        </form>
                    </div>
                    <div class="d-flex justify-content-between tm-pt-45">
                    </div>
                    <hr>
                    
                    <div class="d-flex justify-content-between">
                        <span>by <%  out.println(Blog_User_Name.get(i)); i=i+1;%></span>
                    </div>
                </article>
                        <%} %>
            </div>            
            <footer class="row tm-row">
                <hr class="col-12">
                <div class="col-md-6 col-12 tm-color-gray">
                    Design: Pratik Pathak</a>
                </div>
            </footer>
        </main>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/templatemo-script.js"></script>
</body>
</html>

