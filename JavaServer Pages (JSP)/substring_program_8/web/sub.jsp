<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2> String </h2>
        <br>
      <form method="post">
        Enter Your String &nbsp; &nbsp;
      <input type="text" name="st" value="<c:out value="${param.st}"/>" autofocus/><br>
        <br> <br>
         Start String &nbsp; &nbsp;
      <input type="text" name="start" value="<c:out value="${param.start}"/>" autofocus/><br>
        <br> <br>
        End String &nbsp; &nbsp;
      <input type="text" name="end" value="<c:out value="${param.end}"/>" autofocus/><br>
        <br> <br>
        
       <input type="submit" value="Compute Factorial"  title="Click here to findout the factorial value." />
       <br />
      </form>
      <c:if test="${pageContext.request.method=='POST'}">
          <c:set var = "string2" value = "${fn:substring(param.st, param.start, param.end)}" />
          
      </c:if>
        ${string2}
    </body>
</html>
