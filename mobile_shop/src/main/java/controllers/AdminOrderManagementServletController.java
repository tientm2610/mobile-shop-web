package controllers;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Order;
import models.User;
import models.db.DBCrud;

@WebServlet("/adminOrder")
public class AdminOrderManagementServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get data from DBCrud
        DBCrud db = new DBCrud();
        List<Order> orderList = db.getAllOrder();
        req.setAttribute("oList", orderList); // đẩy productList lên cái pList lên
        // set data to jsp
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/AdminManagementOrder.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }

}
