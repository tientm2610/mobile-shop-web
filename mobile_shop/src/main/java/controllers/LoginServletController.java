package controllers;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.User;
import models.db.DBCrud;

@WebServlet("/login")
public class LoginServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // vao trang login
        // req.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(req, resp);

        String email = req.getParameter("email");
        String pass = req.getParameter("pass");

        DBCrud db = new DBCrud();
        User user = db.login(email, pass);
        if (user == null) {
            // Login that bai tro lai trang login
            req.setAttribute("mess", "Sai tài khoản hoặc mật khẩu !");
            req.getRequestDispatcher("/WEB-INF/views/Login.jsp").forward(req, resp);
        } else {
            // lưu user vào session
            HttpSession session = req.getSession();
            session.setAttribute("seUser", user);
            // thanh cong thi vao trang home
            resp.sendRedirect("home");

        }
    }

}
