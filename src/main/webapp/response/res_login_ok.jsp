<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
        /*
        login.jsp에서 전달받은 값을 처리...
        // UTF-8 인코딩(한글 사용 시)
        request.setCharacterEcoding('UTF-8')

        <가정>
        id: abc1234
        pw: asd123
        id와 pw가 위와 같다면 로그인 성공
        성공시 login_welcome 페이지 이동
        실패시
        1. id가 틀린 경우, login_id_fail 페이지로 이동
        2. pw가 틀린 경우, login_pw_fail 페이지로 이동
        */

    // 1. param로 전달되어진 id, pw를 받기
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");

    // 2. id와 pw 검증 처리 작업
    if(id.equals("abc1234")) {
        if(pw.equals("asd123")) {
            //로그인 성공
            response.sendRedirect("login_welcome.jsp");
        } else {
            //패스워드 틀림
            response.sendRedirect("login_pw_fail.jsp");
        }
    } else {
        // id 틀림
        response.sendRedirect("login_id_fail.jsp");
    }

    /*
    response 객체의 주요 메소드
    1. sendRedirect(): 지정한 url로 이동(**)
    2. getCharacterEncoding(): 응답할 때 문장의 인코딩 형태를 불러옴.
    3. setCookie(Cookie c): 쿠키 설정을 함.(***)
    */
%>