<%-- 서블릿 주석: JSP에서 page 지시자는 현재 보여지는 페이지에 대한 설정 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ page import="java.util.List" %>
<%--
    JSP 태그 종류
    1. 스크립트릿(scriptlet)    : <% %> 모든 자바 코드 사용할 수 있음.
    2. 지지자(directive)        : <%@ %> 페이지 속성이나 기타 설정을 사용할 수 있음.
        a. language: 사용할 언어 지정. Java만 지정
        b. import: 패키지를 import할 때 사용
        c. errorPage: 설정된 페이지에서 에러가 발생했을 때 미리 만들어 둔 에러 페이지 호출
        d. contentType: text/html 이렇게 사용되면 html 문서
        e. pageEncoding: 출력 문자 인코딩
        [include]: jsp에 다른 특정 영역의 속한 문서를 로드할 때 사용
        ex) <%@ include file="header.jsp"%>
        [taglib]: jsp 페이지에 사용할 태그 라이브러리를 지정함.
        ex) <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    3. 선언자(declaration)      : <%! %> 변수나 메소드 선언 시 사용 (전역변수 역할)
    4. 표현식(expression)       : <%= %> 결과값을 출력할 때 사용
    5. 주석(comments)          : <%-- --%> 주석
--%>
<!DOCTYPE html> 
<html>
<head>
    <title>구구단 결과</title>
</head> 
<body> 
    <%-- JSP에서 값을 불러오는 방식 --%>
    <% Integer dan = (Integer)request.getAttribute("dan"); %>
    <h2><%= dan%>단 출력 결과</h2> 
    <ul> 
        <% // scriptlet 사용 이유: 데이터를 사용한 반복적인 작업을 java 형식으로 구현.
            List<String> result = (List<String>)request.getAttribute("result"); 
            for(String res : result) { 
        %> 
        <li><%= res %></li> 
        <% } %> 
    </ul> 
    <a href="index.jsp">처음으로</a> 
</body> 
</html> 