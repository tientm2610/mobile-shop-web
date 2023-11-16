package controllers;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Product;
import models.db.DBCrud;

@WebServlet("/payment")
public class PaymentServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String productId = req.getParameter("product_id");
        String productName = req.getParameter("product_name");
        String img = req.getParameter("img");
        String price = req.getParameter("price");

        req.setAttribute("productId", productId);
        req.setAttribute("productName", productName);
        req.setAttribute("price", price);
        req.setAttribute("img", img);
        req.setAttribute("productId", productId);
        DBCrud db = new DBCrud();
        List<Product> productList = db.getProductByProduct_id(productId);
        req.setAttribute("pList", productList);
        req.getRequestDispatcher("/WEB-INF/views/Payment.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }

}
