import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/checklogin.do")
public class CheckLogin extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        // 1. param로 전달되어진 id, pw를 받기
        String id = req.getParameter("id");
        String pw = req.getParameter("pw");

        // 2. id와 pw 검증 처리 작업
        if(id.equals("abc1234")) {
            if(pw.equals("asd123")) {
                //로그인 성공
                resp.sendRedirect("response/login_welcome.jsp");
            } else {
                //패스워드 틀림
                resp.sendRedirect("response/login_pw_fail.jsp");
            }
        } else {
            // id 틀림
            resp.sendRedirect("response/login_id_fail.jsp");
        }
    }
}
