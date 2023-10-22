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

@WebServlet("/deleteAccount")
public class DeleteAccountServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=UTF-8");
        String user_id = req.getParameter("uid");
        // get data from DBCrud
        DBCrud db = new DBCrud();
        db.deleteAccount(user_id);
        // set data to jsp

        // trang Homeview.jsp
        resp.sendRedirect("adminAccount");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}
