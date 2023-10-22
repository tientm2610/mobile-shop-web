package controllers;

import java.io.IOException;
import java.util.List;

import org.eclipse.tags.shaded.org.apache.xalan.xsltc.compiler.sym;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Category;
import models.User;
import models.db.DBCrud;

@WebServlet("/addProduct")
public class AddProductServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        // // get data from DBCrud
        DBCrud db = new DBCrud();
        List<Category> categoryList = db.getAllCategory();
        // // set data to jsp
        req.setAttribute("cList", categoryList); // đẩy productList lên cái pList lên
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/AddProduct.jsp");
        requestDispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        String productId = req.getParameter("product_id");
        String productName = req.getParameter("product_name");
        String categoryId = req.getParameter("category_id");
        String img = req.getParameter("img");
        String price = req.getParameter("price");
        String description = req.getParameter("description");

        DBCrud db = new DBCrud();
        db.insertProduct(productId, productName, categoryId, img, price, description);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminProduct");
        requestDispatcher.forward(req, resp);
    }

}
