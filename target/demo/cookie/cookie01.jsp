<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
    /*
    1. Date 클래스를 이용해서 페이지에 접근한 시간 정보를 yyyy년 mm월 dd일 형태로 생성
     해당 날짜 형식의 문자열을 show라는 이름을 가진 쿠키로 생성.
    2. 클라이언트에 전달.
    */
    // 날짜 생성
    Date now = new Date();
    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd_HH:mm:ss.SSS");

    //쿠키 생성
    Cookie show = new Cookie("show", date.format(now));  // "show": 쿠키 이름
    /*
    쿠키의 메소드
    1. setMaxAge(): 쿠키의 유효 시간
    2. setPath(): 쿠키 사용 유효 디렉터리 설정
    3. setValue(): 쿠키 값 설정
    4. setVersion(): 쿠키 버전 설정
    5. getMaxAge(): 쿠키 유효 시간 불러옴
    6. getName(): 쿠키 이름을 얻음
    7. getPath(): 쿠키 유효 디렉터리 정보를 얻음
    8. getValue(): 쿠키 값을 얻음
    9. gerVersion(): 쿠키 버전 값을 얻음
    */
    show.setMaxAge(30);
    // 응답에 쿠키를 추가
    response.addCookie(show);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Cookie01 테스트</title>
    </head>
    <body>
        <a href="cookie02.jsp">쿠키에 저장된 값을 확인</a>
    </body>
</html>