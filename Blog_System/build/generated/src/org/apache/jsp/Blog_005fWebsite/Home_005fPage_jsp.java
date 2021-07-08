package org.apache.jsp.Blog_005fWebsite;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import Blog_System_Bean.Get_Set_Blog;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.util.ArrayList;
import java.util.List;

public final class Home_005fPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
  

            Configuration cfg = new Configuration();
            cfg.configure();
            SessionFactory sf=cfg.buildSessionFactory();
            Session sess = sf.openSession();
            String hql = "from Get_Set_Blog";
            Query qry = sess.createQuery(hql);
            List<Get_Set_Blog> orderList = qry.list();
            Iterator<Get_Set_Blog> it = orderList.iterator(); 
            List<String> list=new ArrayList<String>();  
            while(it.hasNext())  
            {  
                Get_Set_Blog e =it.next();
                list.add(e.getBlog_Data());  
    //            JobRegistration e=(JobRegistration)it.next();  
    //            name=e.getFullname();  
    //            id=e.getEnrollmentno();
    //            dob=e.getDob();
    //            gender=e.getGender();
    //            branch=e.getBranch();  
    //            gmail=e.getEmail();
    //            semester=e.getSemester();
                    
            }
            sess.close();
            sf.close();


      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\t<title>Home Page</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"fontawesome/css/all.min.css\"> <!-- https://fontawesome.com/ -->\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap\" rel=\"stylesheet\"> <!-- https://fonts.google.com/ -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/templatemo-xtra-blog.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<header class=\"tm-header\" id=\"tm-header\">\n");
      out.write("        <div class=\"tm-header-wrapper\">\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" aria-label=\"Toggle navigation\">\n");
      out.write("                <i class=\"fas fa-bars\"></i>\n");
      out.write("            </button>\n");
      out.write("            <div class=\"tm-site-header\">\n");
      out.write("                <div class=\"mb-3 mx-auto tm-site-logo\"><i class=\"fas fa-times fa-2x\"></i></div>            \n");
      out.write("                <h1 class=\"text-center\">Xtra Blog</h1>\n");
      out.write("            </div>\n");
      out.write("            <nav class=\"tm-nav\" id=\"tm-nav\">            \n");
      out.write("                <ul>\n");
      out.write("                    <li class=\"tm-nav-item active\"><a href=\"index.html\" class=\"tm-nav-link\">\n");
      out.write("                        <i class=\"fas fa-home\"></i>\n");
      out.write("                        Blog Home\n");
      out.write("                    </a></li>\n");
      out.write("                    <li class=\"tm-nav-item\"><a href=\"#\" class=\"tm-nav-link\">\n");
      out.write("                        <i class=\"fas fa-pen\"></i>\n");
      out.write("                        Single Post\n");
      out.write("                    </a></li>\n");
      out.write("                    <li class=\"tm-nav-item\"><a href=\"#\" class=\"tm-nav-link\">\n");
      out.write("                        <i class=\"fas fa-users\"></i>\n");
      out.write("                        About Xtra\n");
      out.write("                    </a></li>\n");
      out.write("                    <li class=\"tm-nav-item\"><a href=\"#\" class=\"tm-nav-link\">\n");
      out.write("                        <i class=\"far fa-comments\"></i>\n");
      out.write("                        Contact Us\n");
      out.write("                    </a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("            <p class=\"tm-mb-80 pr-5 text-white\">\n");
      out.write("                This is the OOT Project create by Pratik , Harit And Urvi.\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <main class=\"tm-main\">\n");
      out.write("            <!-- Search form -->       \n");
      out.write("            <div class=\"row tm-row\">\n");
      out.write("                <article class=\"col-12 col-md-6 tm-post\">\n");
      out.write("                    <hr class=\"tm-hr-primary\">\n");
      out.write("                    <a href=\"#\" class=\"effect-lily tm-post-link tm-pt-60\">\n");
      out.write("                        <h2 class=\"tm-pt-30 tm-color-primary tm-post-title\">Simple and useful HTML layout</h2>\n");
      out.write("                    </a>                    \n");
      out.write("                    <p class=\"tm-pt-30\">\n");
      out.write("                        ");
  
                            list.get(1);
                        
      out.write("\n");
      out.write("                    </p>\n");
      out.write("                    <div class=\"d-flex justify-content-between tm-pt-45\">\n");
      out.write("                    </div>\n");
      out.write("                    <hr>\n");
      out.write("                    <div class=\"d-flex justify-content-between\">\n");
      out.write("                        <span>by Admin Nat</span>\n");
      out.write("                    </div>\n");
      out.write("                </article>\n");
      out.write("            </div>            \n");
      out.write("            <footer class=\"row tm-row\">\n");
      out.write("                <hr class=\"col-12\">\n");
      out.write("                <div class=\"col-md-6 col-12 tm-color-gray\">\n");
      out.write("                    Design: Pratik Pathak</a>\n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("        </main>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/templatemo-script.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
