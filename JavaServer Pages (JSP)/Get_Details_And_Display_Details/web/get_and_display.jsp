<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = request.getParameter("name");
    String number = request.getParameter("number");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Details</title>
    </head>
    <body>
        <h1> Name :-  <%=user%></h1>
        <h1> Number :-  <%=number%></h1>
    </body>
</html>
