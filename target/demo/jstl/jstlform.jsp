<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>jstl 테스트를 위한 form</title>
    </head>
    <body>
        <h2>if 절 확인</h2>
        <%-- request 객체로 이름, 나이를 전달, name, age 이름으로 전달. --%>
        <form action="jstlif.jsp">
            이름: <input type="text" name="name"><br>
            나이: <input type="text" name="age"><br>
            <input type="submit" value="확인">
        </form>
        <br>
        <h2>choose 절 확인</h2>
        <form action="jstlchoose.jsp">
            이름: <input type="text" name="name"><br>
            나이: <input type="text" name="age"><br>
            <input type="submit" value="확인">
        </form>
        <br>
        <h2>choose절(else if) 확인</h2>
         <form action="jstlchoose2.jsp">
            점수: <input type="text" name="score"><br>
            <input type="submit" value="확인">
        </form>
    </body>
</html>