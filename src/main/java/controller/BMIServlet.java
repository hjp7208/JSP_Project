package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bmi.do")
public class BMIServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String bmiWeight = req.getParameter("weight");
        String bmiHeight = req.getParameter("height");
        double weight = Double.parseDouble(bmiWeight);
        double height = Double.parseDouble(bmiHeight);
        

        req.setAttribute("weight", weight);
        req.setAttribute("height", height);
        // 포워드 기능
        // RequestDispatcher라는 객체(인터페이스)를 통해서 매개변수로 지정된 위치로 전달하는 역할.
        // foward(req, resp) 메소드를 통해 실행.
        req.getRequestDispatcher("/WEB-INF/views/bmiResult.jsp").forward(req, resp);
    }
}
