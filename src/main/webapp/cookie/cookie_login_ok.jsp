<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
    /*
    1. cookie_login.jsp로 넘어온 아이디, 비밀번호 받아 처리
    2. id = "abc", pw = "1234"라면 로그인 성공으로 간주,
        로그인 성공 시, 쿠키 생성 - ("user_id", id) 값을 가지는 쿠키 생성
    3. 쿠키 문법을 사용하여 쿠키를 전송

    4. 만약 아이디, 비밀번호가 틀렸다면 cookie_login.jsp로 이동

    5. 로그인 성공했을 시 cookie_welcome.jsp로 이동
        "id"님 환영합니다 정보 출력. (id는 실제 id -> "abc")
        쿠키를 사용해서 표현되게
    6. cookie_login.jsp에는 user_id 쿠키가 있는 경우: 로그인 아이디 입력 부분에
        cookie에 있는 user_id값이 나오게. (아이디 기억하기가 체크되어있을 시에만)
        idCheck 박스를 표시한 경우에는 역시 쿠키를 생성해서 추가해야 함
        "idCheck"로 생성해서 확인 후에 user_id 아이디 부분에 표시
    */
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String idCheck = request.getParameter("idCheck");

    if(id.equals("abc")) {
        if(pw.equals("1234")) {
            // 로그인 성공
            Cookie cookieId = new Cookie("cookieId", id);
            cookieId.setMaxAge(120);
            response.addCookie(cookieId);

            if(idCheck != null) {
                Cookie checkId = new Cookie("checkId", id);
                checkId.setMaxAge(180);
                response.addCookie(checkId);
            }
            response.sendRedirect("cookie_welcome.jsp");
        } else {
            // 비밀번호 오류
            response.sendRedirect("cookie_login_fail.jsp");
        }
    } else {
        // 아이디 오류
        response.sendRedirect("cookie_login_fail.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        
    </body>
</html>