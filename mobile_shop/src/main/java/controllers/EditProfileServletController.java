package controllers;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import models.User;
import models.db.DBCrud;

@WebServlet("/editProfile")
public class EditProfileServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // get data from DBCrud
        DBCrud db = new DBCrud();
        List<User> userList = db.getAllUser();
        // set data to jsp
        req.setAttribute("uList", userList); // đẩy productList lên cái pList lên
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/Profile.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");

        String email = req.getParameter("uEmail");
        String fullname = req.getParameter("uName");
        String pass = req.getParameter("uPass");
        String phone = req.getParameter("uPhone");
        String address = req.getParameter("uAddress");
        String userId = req.getParameter("uId");
        //
        System.out.println(email);
        System.out.println(fullname);
        System.out.println(pass);
        System.out.println(phone);
        System.out.println(address);
        System.out.println(userId);

        DBCrud db = new DBCrud();
        db.editAccount(email, fullname, pass, phone, address, userId);

        doGet(req, resp);
    }

}
