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
         
        
       <input type="submit" value="Compute Factorial"  title="Click here to findout the factorial value." />
       <br />
      </form>
      <c:if test="${pageContext.request.method=='POST'}">
     
        <c:set var="splitNumbers" value="${fn:split(param.st,',')}" />
        <c:set var="joinedNumbers" value="${fn:join(splitNumbers,' ')}" />
       
        <p>Joined String: ${joinedNumbers}</p>

      </c:if>
    </body>
</html>
