/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import info.bank_check;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author asus
 */
@WebServlet(urlPatterns = {"/back_user_check"})
public class back_user_check extends HttpServlet {

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

            int Account_No,Withdrawal_Amount,Account_No_db;
        String Customer_Name,Email_Id;
        
        Account_No = Integer.parseInt(request.getParameter("input_Account_No"));
        Withdrawal_Amount = Integer.parseInt(request.getParameter("Withdrawal_Amount"));
        Customer_Name = request.getParameter("Customer_Name");
        Email_Id = request.getParameter("Email_Id");
        
        
        bank_check bac = new bank_check();
        
            if(Account_No==bac.getAccount_No()){
                if(Email_Id.equals(bac.getI_id())){
                    if(Customer_Name.equals(bac.getName())){
                        if(Withdrawal_Amount<bac.getBank_Amount()){
                            RequestDispatcher rd = request.getRequestDispatcher("wel.jsp");
                            rd.forward(request, response);
                        }else{
                            RequestDispatcher rd = request.getRequestDispatcher("17.html");
                            rd.forward(request, response);
                        }
                    }else{
                        RequestDispatcher rd = request.getRequestDispatcher("17.html");
                        rd.forward(request, response);
                    }
                }else{
                    RequestDispatcher rd = request.getRequestDispatcher("17.html");
                    rd.forward(request, response);
                }
            }else{
                RequestDispatcher rd = request.getRequestDispatcher("17.html");
                rd.forward(request, response);
            }
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
