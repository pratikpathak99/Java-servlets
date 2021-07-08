package org.apache.jsp.Blog_005fWebsite;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class View_005fBlog_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\t<title>View Blog</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"fontawesome/css/all.min.css\"> <!-- https://fontawesome.com/ -->\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap\" rel=\"stylesheet\"> <!-- https://fonts.google.com/ -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/templatemo-xtra-blog.css\" rel=\"stylesheet\">\n");
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
      out.write("                    <li class=\"tm-nav-item\"><a href=\"index.html\" class=\"tm-nav-link\">\n");
      out.write("                        <i class=\"fas fa-home\"></i>\n");
      out.write("                        Blog Home\n");
      out.write("                    </a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("            \n");
      out.write("            <p class=\"tm-mb-80 pr-5 text-white\">\n");
      out.write("                This is the OOT Project create by Pratik , Harit And Urvi.\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </header>\n");
      out.write("    <div class=\"container-fluid\">\n");
      out.write("        <main class=\"tm-main\">           \n");
      out.write("            <div class=\"row tm-row\">                    \n");
      out.write("                <div class=\"mb-4\">\n");
      out.write("                    <h2 class=\"pt-2 tm-color-primary tm-post-title\">");
 out.print((String)session.getAttribute("Title"));
      out.write("</h2>\n");
      out.write("                    <p class=\"tm-mb-40\">posted by ");
 out.print((String)session.getAttribute("Blog_User_name"));
      out.write("</p>\n");
      out.write("                    <p>\n");
      out.write("                        This is a description of the video post. You can also have an image instead of the video. You can free download from TemplateMo website. Phasellus maximus quis est sit amet maximus. Vestibulum vel rutrum lorem, ac sodales augue. Aliquam erat volutpat. Duis lectus orci, blandit in arcu est, elementum tincidunt lectus. Praesent vel justo tempor, varius lacus a,pharetra lacus. </p>\n");
      out.write("                    <p>\n");
      out.write("                        Duis pretium efficitur nunc. Mauris vehicula nibh nisi. Curabitur gravida neque dignissim, aliquet nulla sed, condimentum nulla. Pellentesque id venenatis quam, id cursus velit. Fusce semper tortor ac metus iaculis varius. Praesent\n");
      out.write("                        aliquam ex vel lectus ornare tristique. Nunc et eros quis enim feugiat tinciduntet vitae dui.\n");
      out.write("                    </p>\n");
      out.write("                            \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <footer class=\"row tm-row\">\n");
      out.write("                <div class=\"col-md-6 col-12 tm-color-gray\">\n");
      out.write("                    Design by Pratik Pathak</a>\n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("        </main>\n");
      out.write("    </div>\n");
      out.write("    <script src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/templatemo-script.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
