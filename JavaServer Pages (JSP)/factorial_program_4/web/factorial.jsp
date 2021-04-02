
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title> Factorial Solver  Solver in JSTL and JSP</title>
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
  <h2> Factorial Solver in JSTL and JSP </h2>
  <br>
  <form method="post">
      Enter a number &nbsp; &nbsp;
    <input type="text" name="number"  size="3" value="<c:out value="${param.number}"/>" autofocus/><br>
      <br> <br>
     <input type="submit" value="Compute Factorial"  title="Click here to findout the factorial value." />
     <br />
    </form>
    <c:if test="${pageContext.request.method=='POST'}">
        <c:set var="fact" scope="session" value="1"/>
            
        <c:forEach var = "i" begin = "1" end = "${param.number}">
         
        <c:set var="fact" scope="session" value="${i} * ${(param.number)}"/> 
          
        </c:forEach>
    
    </c:if>
    ${fact}
</body>
</html>
