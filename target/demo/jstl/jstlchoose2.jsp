<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>학점 판정</title>
    </head>
    <body>
        <%--
            choose 절을 이용하여 90점 이상 A
            80점 이상 B, 70점 이상 C, 나머지 F
        --%>
        <c:choose>
            <c:when test="${param.score >= 90}">학점: A</c:when>
            <c:when test="${param.score >= 80}">학점: B</c:when>
            <c:when test="${param.score >= 70}">학점: C</c:when>
            <c:otherwise>학점: F</c:otherwise>
        </c:choose>
    </body>
</html>