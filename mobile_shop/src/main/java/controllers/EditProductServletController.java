package controllers;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Category;
import models.Product;
import models.db.DBCrud;

@WebServlet("/editProduct")
public class EditProductServletController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // Load thông tin của product
        resp.setContentType("text/html;charset=UTF-8");
        String proId = req.getParameter("product_id");

        DBCrud db = new DBCrud();
        List<Product> productList = db.getProductByProduct_id(proId);
        req.setAttribute("pList", productList);
        List<Category> categoryList = db.getAllCategory();
        // // set data to jsp
        req.setAttribute("cList", categoryList);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/WEB-INF/views/EditProduct.jsp");
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

        //
        System.out.println(productId);
        System.out.println(productName);
        System.out.println(categoryId);
        System.out.println(price);
        System.out.println(description);

        DBCrud db = new DBCrud();
        db.editProduct(productName, categoryId, img, price, description, productId);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("adminProduct");
        requestDispatcher.forward(req, resp);
    }

}
