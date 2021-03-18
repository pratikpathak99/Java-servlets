<%-- 
    Document   : index
    Created on : Mar 18, 2021, 7:17:28 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function addition()
            {
            var a = parseInt(form.input1.value);
            var b = parseInt(form.input2.value);
            var c = a+b;
            document.getElementById("aa").value = c;

            }
        </script>
    </head>
    <body>
       <form name="form" method="GET">
            First Number
            <input type="text" name="input1"><br>
            </br>
            Second Number 

            <input type="text" name="input2"><br></br>
            <input type="button" value="Add" onclick="addition()">
            </br> </br>Result
            <input type="text" id="aa" name="input3" ><br>
        </form>
    </body>
</html>
