package controllers;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.User;
import models.db.DBCrud;

@WebServlet("/createAccount")
public class CreateAccountServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/CreateAccount.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // RequestDispatcher requestDispatcher =
        // req.getRequestDispatcher("/WEB-INF/views/HomeView1.jsp");
        resp.setContentType("text/html;charset=UTF-8");
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        String fullname = req.getParameter("fullname");
        String phone = req.getParameter("phone");
        String address = req.getParameter("address");

        // User user = db.checkAccountExist(email);
        if (email.isEmpty() || pass.isEmpty() || fullname.isEmpty() ||
                phone.isEmpty() || address.isEmpty()) {

            req.getRequestDispatcher("createAccount").forward(req, resp);
        } else {
            DBCrud db = new DBCrud();
            db.createAccount(email, pass, fullname, phone, address);
            req.setAttribute("mess1", "Tạo tài khoản thành công !");
            req.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(req, resp);

        }

        // if (user == null) { // duoc dang nhap vi user chua co
        // db.createAccount(email, pass, fullname, phone, address);
        // RequestDispatcher requestDispatcher =
        // req.getRequestDispatcher("/WEB-INF/views/HomeView1.jsp");
        // requestDispatcher.forward(req, resp);
        // } else { // day ve rang login
        // resp.sendRedirect("login");
        // }

    }

}
