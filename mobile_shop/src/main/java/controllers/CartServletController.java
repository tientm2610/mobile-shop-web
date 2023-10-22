package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Product;
import models.db.DBCrud;

@WebServlet("/cart")
public class CartServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // resp.setContentType("text/html;charset=UTF-8");
        // Cookie arr[] = req.getCookies();
        // PrintWriter out = resp.getWriter();
        // List<Product> productList = new ArrayList<>();
        // DBCrud db = new DBCrud();

        // for (Cookie o : arr) {
        // if (o.getName().equals("product_id")) {
        // String txt[] = o.getValue().split(",");
        // for (String s : txt) {
        // productList.add(db.getProductByCategory_id(s));
        // }
        // }

        // }

        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/Cart.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }

}
