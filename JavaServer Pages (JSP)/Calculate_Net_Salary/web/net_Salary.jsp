<%-- 
    Document   : net_Salary
    Created on : Mar 25, 2021, 9:35:55 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Home Page</title>
    </head>
    <body>
        <pre>
            <form>
                <h1>
                    Employee Id :: <input type="text" name="Employee_Id">
                    <br>
                    Employee Name :: <input type="text" name="Employee_Name">
                    <br>
                    Employee Salary :: <input type="text" name="Employee_Salary">
                    <br>
                    <input type="submit" value="Submit" name="btnSubmit">
                </h1>
            </form>
            <%
                try { 
                    if(request.getParameter("btnSubmit").equals("Submit") == true){
                        int Salary = Integer.parseInt(request.getParameter("Employee_Salary"));
                        int HRA = (Salary/3)/100;
                        int DA = (Salary/7)/100;
                        int Gross_Salary = Salary+HRA+DA;
                        out.println("Employee Id  :: "+request.getParameter("Employee_Id"));
                        out.println("Employee Name  :: "+request.getParameter("Employee_Name"));
                        out.println("Employee Salary  :: "+request.getParameter("Employee_Salary"));
                        out.println("Employee HRA  :: "+HRA);
                        out.println("Employee DA  :: "+DA);
                        out.println("Employee Gross Salary  :: "+Gross_Salary);
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
                    }
                }
                catch (Exception e) {

                }
            %>
        </pre>
    </body>
</html>
