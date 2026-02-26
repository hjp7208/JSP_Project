<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.UserInfo"%>
<%
    // String id, String pw, String name, int age, String[] hobby
    UserInfo userInfo = new UserInfo(
        "userId", "userPw", "홍준표", 23, new String[]{"독서, 검도"});

    // request 메세지에 UserInfo를 전달.
    request.setAttribute("userInfo", userInfo);

    // 포워드 처리: url 주소는 변경되지 않고, foward된 jsp의 결과 불러옴
    RequestDispatcher dp = request.getRequestDispatcher("el_request_ok.jsp");
    dp.forward(request, response);
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