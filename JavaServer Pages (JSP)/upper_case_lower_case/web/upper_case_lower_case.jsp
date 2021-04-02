<%-- 
    Document   : upper_case_lower_case
    Created on : Apr 2, 2021, 9:28:36 AM
    Author     : asus
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<%
    String u1 = request.getParameter("user_input").toString();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:set var = "string1" value = "This is first String."/>
        <c:set var = "string2" value = "${fn:toUpperCase(string1)}" />    
        <p>Final string : ${string2}</p>
    </body>
</html>
