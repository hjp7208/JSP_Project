package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import dto.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/cartList.do")
public class ProductServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> productList = new ArrayList<>();
        productList.add(0, new Product("휴대폰", 1000000, 1));
        productList.add(0, new Product("컴퓨터", 3000000, 2));
        productList.add(0, new Product("이어폰", 50000, 10));
        productList.add(0, new Product("음료수", 1000, 230));

        long totalPrice = productList.stream().mapToLong(p -> (long)p.price() * p.amount()).sum();
        
        req.setAttribute("totalPrice", totalPrice);
        req.setAttribute("productList", productList);
        req.getRequestDispatcher("/WEB-INF/views/cartSummary.jsp").forward(req, resp);
    }
}
