package controllers;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Product;
import models.db.DBCrud;
import models.db.MySQLConnector;

@WebServlet("/home")
public class HomeViewServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // get data from DBCrud
        DBCrud db = new DBCrud();
        List<Product> productList = db.getAllProduct();
        // set data to jsp
        req.setAttribute("pList", productList); // đẩy productList lên cái pList lên
        // trang Homeview.jsp
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/HomeView1.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}
