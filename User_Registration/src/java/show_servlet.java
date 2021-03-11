import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/show_servlet"})
public class show_servlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String[] hobbies;
        String First_Name = request.getParameter("First_Name");
        String Last_Name = request.getParameter("Last_Name"); 
        String Gender = request.getParameter("Gender");
        String Mobile_Number = request.getParameter("Mobile_Number");
        hobbies= request.getParameterValues("Hobbies");
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet show_servlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1> First Name :- " + First_Name + "</h1>");
            out.println("<h1> Last Name :- " + Last_Name + "</h1>");
            out.println("<h1> Gender :- " + Gender + "</h1>");
            out.println("<h1> Moblie Number :- " + Mobile_Number + "</h1>");
            out.println("<h1> My hobby/hobbies are: </h1>");
            for(int i=0; i<hobbies.length; i++){
            out.println(hobbies[i]+",");
            }
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
