<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pattern</title>
    </head>
    <body>
        <h2> Pattern  </h2>
        <br>
      <form method="post">
        Enter a number &nbsp; &nbsp;
      <input type="text" name="number"  size="3" value="<c:out value="${param.number}"/>" autofocus/><br>
        <br> <br>
       <input type="submit" value="Compute Factorial"  title="Click here to findout the factorial value." />
       <br />
      </form>
      <c:if test="${pageContext.request.method=='POST'}">
          <c:forEach var = "i" begin = "1" end = "${param.number} ">
              
              <c:forEach var = "j" begin = "1" end = "${i}">
                  ${j}
                </c:forEach>
                  <br/>
          </c:forEach>
          
      </c:if>
    </body>
</html>
