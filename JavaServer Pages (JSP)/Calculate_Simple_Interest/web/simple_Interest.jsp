<%-- 
    Document   : simple_Interest
    Created on : Mar 25, 2021, 8:58:24 AM
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
                    Principal :: <input type="text" name="principle">
                    <br>
                    No. of Year :: <input type="text" name="year">
                    <br>
                    Rate of Interest :: <input type="text" name="interest">
                    <br>
                    <input type="submit" value="Submit" name="btnSubmit">
                </h1>
            </form>
        </pre>
        <%
            try { 
                if(request.getParameter("btnSubmit").equals("Submit") == true){
                    int n1 = Integer.parseInt(request.getParameter("principle"));
                    int n2 = Integer.parseInt(request.getParameter("year"));
                    int n3 = Integer.parseInt(request.getParameter("interest"));
                    
                    double si=((n1*n2*n3)/100);
                    double x = n1+si;
                    out.println("Simple Interest :: "+x);
                }
            }
            catch (Exception e) {
                out.println("Welcome To Simple Interest..");
            }
        %>
    </body>
</html>
