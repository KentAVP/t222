<%@ page import="java.util.Locale" %>
<%@ page import="java.io.PrintWriter" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<fmt:setLocale value="${param.locale}" />
<html>
<head>
    <c:choose>
        <c:when test="${param.locale == 'ru'}">
            <title>МАШИНЫ</title>
            <h1>МАШИНЫ</h1>
        </c:when>
        <c:when test="${param.locale == 'en'}">
            <title>CARS</title>
            <h1>CARS</h1>
        </c:when>
        <c:otherwise>
            <c:redirect url="/cars?locale=ru"/>
        </c:otherwise>
    </c:choose>

</head>

<body>

<c:forEach var="msq" items="${messages}">
    <h1>${msq}</h1>
</c:forEach>

</body>
</html>
