import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// Servlet 구분 방법 - 'URL-Mapping'
// 1. WebServlet()을 이용한 url 매핑
// C:\JAVAPROJECTS\jsp\demo\src\main\java\TestServlet.java 
// 현재 tomcat에서 웹 접근 경로는 demo/src/main/webapp
// test.do 라는 url 주소로 묶음(Mapping)
@WebServlet("/test.do")
public class TestServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html; charset=UTF-8");

        PrintWriter out = resp.getWriter();
        out.println("<body>");
        out.println("동작함");
        out.println("</body>");
    }
}
