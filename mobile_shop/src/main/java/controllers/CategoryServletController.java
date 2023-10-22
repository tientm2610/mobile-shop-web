package controllers;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import models.Product;
import models.db.DBCrud;

@WebServlet("/category")
public class CategoryServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        String cateId = req.getParameter("category_id");
        // da lay duoc category

        DBCrud db = new DBCrud();
        List<Product> productList = db.getProductByCategory_id(cateId);
        req.setAttribute("pList", productList);

        req.getRequestDispatcher("/WEB-INF/views/HomeView1.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }

}
