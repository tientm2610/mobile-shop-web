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

@WebServlet("/search")
public class SearchServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String txtSearch = req.getParameter("txt"); // ten trung voi cai name o nut submit
        // da lay duoc category

        DBCrud db = new DBCrud();
        List<Product> productList = db.searchProductByName(txtSearch);
        req.setAttribute("pList", productList);

        req.getRequestDispatcher("/WEB-INF/views/HomeView1.jsp").forward(req, resp);

    }

}
