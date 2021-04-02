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
      <form>
	An input box: <input type="text" name="v">
	<input type="submit" value="ok">
	<c:set var="s" value="${param.v}"></c:set>
</form>
Before：<c:out value="${s}"></c:out><br>
<c:if test="${not empty s}">
	<c:forEach var="i" begin="0" end="${fn:length(s)-1}">
		<c:set var="ns" value="${fn:substring(s,i,i+1)}${ns}"></c:set>
	</c:forEach>
</c:if>
After：${ns}
    </body>
</html>
