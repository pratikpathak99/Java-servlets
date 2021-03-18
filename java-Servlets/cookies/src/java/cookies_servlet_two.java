import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/cookies_servlet_two"})
public class cookies_servlet_two extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet cookies_servlet_two</title>");            
            out.println("</head>");
            out.println("<body>");
            Cookie test_one[]=request.getCookies();  
            out.print("Hello "+test_one[0].getValue());
            if(test_one!=null)
            for (int i = 0; i < test_one.length; i++) {
                test_one[i].setMaxAge(-1);
                response.addCookie(test_one[i]);
            }
            out.print("Hello "+test_one[0].getValue());
            out.println("</body>");
            out.println("</html>");
        }
    }
}
