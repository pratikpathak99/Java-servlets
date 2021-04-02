<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<title> Area of the Circle Solver in JSTL</title>
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
  <h2> Maximum of the 3 Solver in JSTL</h2>
  <br>
    <form method="post">
      Enter the Radius &nbsp; &nbsp;
      <br> <br>
      <input type="text" name="one"  size="3" value="<c:out  value="${param.radius}"/>" autofocus/><br>
      <br> <br>
      <input type="text" name="two"  size="3" value="<c:out value="${param.radius}"/>" autofocus/><br>
      <br> <br>
      <input type="text" name="three"  size="3" value="<c:out value="${param.radius}"/>" autofocus/><br>
      <br> <br>
      <input type="submit" value="find"  title="Click here to findout the area of the circle." />
      <br />
    </form>
    <c:if test="${pageContext.request.method=='POST'}">
        <c:set var="One" scope="session" value="${param.one}"/>
        <br>
        <c:set var="Two" scope="session" value="${param.two}"/>
        <br>
        <c:set var="Three" scope="session" value="${param.three}"/>
        <c:if  test = "${One >= Two}">
            <c:if  test = "${One >= Three}">
                <p>One Is Big..<p>
            </c:if>
            
        </c:if>
        <c:if  test = "${Two >= One}">
            <c:if  test = "${Two >= Three}">
                <p>Two Is Big..<p>
            </c:if>
        </c:if>
        <c:if  test = "${Three >= One}">
            <c:if  test = "${Three >= Two}">
                <p>Three Is Big..<p>
            </c:if>
        </c:if>
    </c:if>
</body>
</html>