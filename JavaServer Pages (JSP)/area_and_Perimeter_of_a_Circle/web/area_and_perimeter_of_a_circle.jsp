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
  <h2> Area of the Circle And Perimeter Solver in JSTL</h2>
  <br>
  <form method="post">
      Enter the Radius &nbsp; &nbsp;
      <input type="text" name="radius"  size="3" value="<c:out value="${param.radius}"/>" autofocus/><br>
      <br> <br>
      <input type="submit" value="Compute Area"  title="Click here to findout the area of the circle." />
      <br />
    </form>
    <c:if test="${pageContext.request.method=='POST'}">
        <c:set var="convert" scope="session" value="${ (param.radius* param.radius) * 3.1416}"/>
        <c:set var="perimeter" scope="session" value="${ 2 * 3.14 *(param.radius)}"/>
        <br>
        The area of the circle is <fmt:formatNumber value="${convert}" maxFractionDigits="2"/>.
        <br/>
        <br/>
        The area of the Perimeter is <fmt:formatNumber value="${perimeter}" maxFractionDigits="2"/>.
    </c:if>
</body>
</html>