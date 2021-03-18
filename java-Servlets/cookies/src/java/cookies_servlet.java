import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/cookies_servlet"})
public class cookies_servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String n=request.getParameter("userName");  
        
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cookies_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.print("Welcome "+n);  
            
            Cookie test=new Cookie("uname",n);
            response.addCookie(test);  
            
            out.print("<form action='cookies_servlet_two'>");  
            out.print("<input type='submit' value='go'>");  
            out.print("</form>"); 
            out.println("</body>");
            out.println("</html>");
        }
    }
}
