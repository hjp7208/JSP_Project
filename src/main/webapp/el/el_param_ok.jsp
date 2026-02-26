<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>EL을 이용한 파리미터 처리(받기)</title>
    </head>
    <body>
        <%-- el에서 parameter 값은 param 내장 객체 --%>
        이름: ${param.name}<br>
        아이디: ${param.id}<br>
        비밀번호: ${param.pw}<br>
        취미: ${paramValues.hobby}, {paramValues.hobby[0]}<br>
        나이(만/생일안지남): ${param.age}<br>
    </body>
</html>