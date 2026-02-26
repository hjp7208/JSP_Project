<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Cookie[] cookies = request.getCookies();
// 날짜를 저장할 변수 생성
String cookiesId = "";
// 2. 쿠키가 있는지 여부 확인
if(cookiesId != null) {   // 쿠키가 존재하면
    // checkId 라는 이름의 쿠키를 찾고, 그 값을 date에 저장
    for(int i=0; i<cookies.length; i++) {
        if(cookies[i].getName().equals("checkId")) {
            cookiesId = cookies[i].getValue();
        }
    }
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>로그인 성공</title>
    </head>
    <body>
        <%
        out.println("\"" + cookiesId + "\"" + "님 환영합니다.");
        %>
        <br>
        <a href="cookie_login.jsp">로그인 화면으로 이동</a>
    </body>
</html>