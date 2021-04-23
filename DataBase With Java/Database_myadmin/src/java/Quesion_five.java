/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Pratik Pathak
 */
@WebServlet(urlPatterns = {"/Quesion_five"})
public class Quesion_five extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/java_database","root",""); 
            
            //here sonoo is database name, root is username and password  
            Statement stmt=con.createStatement();  
            if(con!=null)
            {
                String User_Input_num = request.getParameter("User_Input_num");
                ResultSet rs=stmt.executeQuery("SELECT `ORDER_ID`, `ORDER_DATE`, `CUSTOMER_ID`, `ORDER_STATUS`, `ORDER_TOTAL` FROM `orders` WHERE `CUSTOMER_ID` ="+User_Input_num);  
            //System.out.println(rs);
                while(rs.next()) 
                {
                    out.println("</br>"+"ORDER_ID :- "+rs.getString("ORDER_ID")+"</br>"+"ORDER_DATE :- "+rs.getString("ORDER_DATE")+"</br>"+"ORDER_STATUS :- "+rs.getString("ORDER_STATUS")+"</br>ORDER_TOTAL :-"+rs.getString("ORDER_TOTAL")+"</br> ------------------");
                }
                con.close();
            }
            else
            {
                out.println("Inside else");
            }
            
            
        }
        catch (Exception e) {
            // Could not find the database driver
            System.out.println("Exception: "+e.getMessage());
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
