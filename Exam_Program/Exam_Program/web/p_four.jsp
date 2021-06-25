<%-- 
    Document   : p_four
    Created on : Jun 25, 2021, 4:02:29 PM
    Author     : Pratik Pathak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <br>
            <form action="factorial.jsp" >
        <button type="submit" class="btn btn-primary btn-lg btn-block" >Factorial</button>
        </form>
        <br>
        <form action="Fibonaci.jsp" >
        <button type="submit" class="btn btn-primary btn-lg btn-block" >Fibonaci</button>
        </form>
        <br>
        <form action="Prime_number.jsp" >
        <button type="submit" class="btn btn-primary btn-lg btn-block">Prime number</button>
        </form>
        </div>
    </body>
</html>
