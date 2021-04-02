<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body 
        {
            font-family:arial;
            font-weight:bold; 
            size:12px;
            color:blue;
        }
    </style>
    <body>
        <form method="post">
            Enter the Radius &nbsp; &nbsp;
            <input type="text" name="one"  size="3" value="<c:out value="${param.radius}"/>" autofocus/><br>
            <input type="text" name="two"  size="3" value="<c:out value="${param.radius}"/>" autofocus/><br>
            <input type="text" name="three"  size="3" value="<c:out value="${param.radius}"/>" autofocus/><br>
            <br> <br>
            <input type="submit" value="find"  title="Click here to findout the area of the circle." />
            <br />
        </form>
    </body>
</html>
