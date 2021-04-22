

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Student_details" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="pd" class="">
            <jsp:setProperty name="pd" property="Name" value="<%= request.getParameter("username")%>"/>
        </jsp:useBean>
    </body>
</html>
