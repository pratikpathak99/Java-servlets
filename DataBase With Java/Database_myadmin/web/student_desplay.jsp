<%-- 
    Document   : student_desplay
    Created on : Apr 28, 2021, 8:14:41 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <b>Enrollment_No :- ${cb.getStudent_Enrollment()}</b><br>
        <b>Your Name:- ${cb.getStudent_name()}</b><br>
        <b>Your Percentage  :- ${cb.getpercentage()}</b><br>
    </body>
</html>
