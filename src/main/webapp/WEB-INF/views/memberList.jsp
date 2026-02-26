<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>회원 목록</title>
    </head>
    <body>
        <h2>회원 목록</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>이름</th>
                <th>이메일</th>
            </tr>
            <c:forEach var="m" items="${members}">
                <tr>
                    <td>${m.id}</td>
                    <td>${m.name}</td>
                    <td>${m.email}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>