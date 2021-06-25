/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
@WebServlet(urlPatterns = {"/p_three"})
public class p_three extends HttpServlet {

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
        int E_id = Integer.parseInt(request.getParameter("Employee_Id"));
        String name = request.getParameter("Employee_Name");
        int Employee_Salary = Integer.parseInt(request.getParameter("Employee_Salary"));
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            int HRA = (Employee_Salary/3)/100;
            int DA = (Employee_Salary/7)/100;
            int Gross_Salary = Employee_Salary+HRA+DA;
            out.print("<pre>");
            out.println("Employee Id  :: "+E_id);
            out.println("<br>");
            out.println("Employee Name  :: "+name);
            out.println("<br>");
            out.println("Employee Salary  :: "+Employee_Salary);
            out.println("<br>");
            out.println("Employee HRA  :: "+HRA);
            out.println("<br>");
            out.println("Employee DA  :: "+DA);
            out.println("<br>");
            out.println("Employee Gross Salary  :: "+Gross_Salary);
            out.println("<br>");
            if(Gross_Salary >= 20000){
                int net_salary = Gross_Salary - (Gross_Salary/5)/100;
                out.println("Employee net salary  :: "+net_salary);
            }
            if(Gross_Salary >= 50000){
                int net_salary = Gross_Salary - (Gross_Salary/8)/100;
                out.println("Employee net salary  :: "+net_salary);
            }
            if(Gross_Salary >= 100000){
                int net_salary = Gross_Salary - (Gross_Salary/11)/100;
                out.println("Employee net salary  :: "+net_salary);
            }
            out.print("</pre>");
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
