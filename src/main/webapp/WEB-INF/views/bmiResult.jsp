<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>측정 결과</title>
    </head>
    <body>
        <h2><b>BMI</b> 측정 결과</h2>
        <ul>
            <%
                Double weight = (Double)request.getAttribute("weight");
                Double height = (Double)request.getAttribute("height");
                double bmiResult = weight/Math.pow((height/100), 2);
                String result = "";
                
                if(bmiResult >= 30) result = "고도비만";
                else if(bmiResult >= 25) result = "비만";
                else if(bmiResult >= 23) result = "과체중";
                else if(bmiResult >= 18.5) result = "정상";
                else result = "저체중";
            %>
            BMI 지수: <%=String.format("%.2f", bmiResult) %><br>
            판정 상태: <%=result %>
        </ul>
        <br>
        <a href="bmiForm.html">다시 계산하기</a>
    </body>
</html>