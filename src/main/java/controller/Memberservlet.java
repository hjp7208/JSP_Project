package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dto.Members;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/members.do")
public class Memberservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Members> memberList = new ArrayList<>();
        for(int i=1; i<=10; i++) {
            memberList.add(new Members(i, "member" + i, "member" + i + "@test.com", true));
        }
        req.setAttribute("members", memberList);

        req.getRequestDispatcher("/WEB-INF/views/memberList.jsp").forward(req, resp);
    }
}
