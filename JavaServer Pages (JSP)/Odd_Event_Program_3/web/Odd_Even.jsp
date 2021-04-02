<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Odd Even Number..</title>
    </head>
    <body>
        <h2> Find The Number to Odd or Even Solver in JSTL</h2>
        <br>
        <form method="post">
          Enter Your Number &nbsp; &nbsp;
          <br> <br>
          <input type="text" name="one"  size="3" value="<c:out  value="${param.radius}"/>" autofocus/><br>
          <br> <br>
          <input type="submit" value="Submit"  title="Click here to findout the area of the circle." />
          <br />
        </form>
        <c:if test="${pageContext.request.method=='POST'}">
            <c:set var="One" scope="session" value="${param.one}"/>
            <br>
            <c:if  test = "${One%2==0}">
               
                   <p>Number Is Even..<p>
            </c:if>
            <c:if  test = "${!(One%2==0)}">
               <p>Number Is Odd..<p>
            </c:if>
        </c:if>
    </body>
</html>
