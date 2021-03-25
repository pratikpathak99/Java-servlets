<%-- 
    Document   : even_and_odd
    Created on : Mar 25, 2021, 11:01:03 AM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>even and odd</title>
    </head>
    <body>
        <%
            try{
                int n1 = Integer.parseInt(request.getParameter("numOne"));
                int n2 = Integer.parseInt(request.getParameter("numTwo"));
                int n3,n4;

                int loopIndex;
                for (loopIndex = n1; loopIndex <= n2; loopIndex++) {
                    if(loopIndex % 2 == 0){
                        n3  =+ loopIndex;
                    }
                    else{
                        n4 =+loopIndex;
                    }
                }
               
            }
            catch (Exception e) {

            }
        %>
    </body>
</html>
