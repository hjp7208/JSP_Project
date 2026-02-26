<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>장바구니</title>
    </head>
    <body>
        <h2>장바구니 품목</h2>
        <c:choose>
            <c:when test="${empty productList}">
                <p>장바구니가 비어 있습니다.</p>
            </c:when>
            <c:otherwise>
                <table border="1">
                    <tr>
                        <th>품목</th>
                        <th>가격</th>
                        <th>수량</th>
                        <th>합계</th>
                    </tr>
                    <c:forEach var="p" items="${productList}" varStatus="s">
                        <tr>
                            <td>${p.productName}</td>
                            <td>${p.price}</td>
                            <td>${p.amount}</td>
                            <td><fmt:formatNumber value="${p.totalPrice}" type="currency" /></td>
                        </tr>
                    </c:forEach>
                </table>
            </c:otherwise>
        </c:choose>
        
    </body>
</html>