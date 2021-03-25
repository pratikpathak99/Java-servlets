<%-- 
    Document   : Login
    Created on : Mar 25, 2021, 12:40:43 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form>
            <pre>
                Email_id :: <input type="email" id="email" name="email"/>   
                <br>
                Pin :: <input type="password" id="pass" name="pass"/>
                <br>
                <input type="submit" value="Submit" name="btnSubmit">
            </pre>
        </form>
        <%
            try { 
                if(request.getParameter("btnSubmit").equals("Submit") == true){                  
                    if(request.getParameter("email").equals(request.getParameter("email_id"))){
                        if(request.getParameter("pass").equals(request.getParameter("Pin"))){
                            out.println("welcome..");
                        }
                        else{
                            out.println("Invalid Password");
                        }
                    }
                    else{
                        out.println("Invalid ID");
                    }
               
                }
            }
            catch (Exception e) { 
            }
        %>
    </body>
</html>
