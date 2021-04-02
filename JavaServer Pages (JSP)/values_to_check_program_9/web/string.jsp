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
        Enter Your 1 String &nbsp; &nbsp;
      <input type="text" name="st" value="<c:out value="${param.st}"/>" autofocus/><br>
        <br> <br>
         Enter Your 2 String &nbsp; &nbsp;
      <input type="text" name="start" value="<c:out value="${param.start}"/>" autofocus/><br>
        <br> <br>
        
       <input type="submit" value="Compute Factorial"  title="Click here to findout the factorial value." />
       <br />
      </form>
      <c:if test="${pageContext.request.method=='POST'}">
         <c:if test = "${fn:contains(param.st,param.start)}">
             <p>Found string<p>
         </c:if> 
         <c:if test = "${!fn:contains(param.st,param.start)}">
             <p>string not Found <p>
         </c:if>  
          
      </c:if>
    </body>
    </body>
</html>
