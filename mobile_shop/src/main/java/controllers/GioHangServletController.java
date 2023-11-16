package controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.Cart;
import models.Product;

@WebServlet("/GioHang")
public class GioHangServletController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Cart> cart = new ArrayList<Cart>();

    public GioHangServletController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command = request.getParameter("command");
        String id = request.getParameter("id");
        String productname = request.getParameter("name");
        String productprice = request.getParameter("price");
        String img = request.getParameter("image");

        System.out.println(command);
        System.out.println(id);
        System.out.println(productname);
        System.out.println(productprice);
        System.out.println(img);

        int price = 0;
        if (productprice != null && !productprice.trim().isEmpty()) {
            price = Integer.parseInt(productprice);
        }

        if (command != null) {
            if (command.equals("addCart")) {
                Product p = new Product(Integer.parseInt(id), productname, "", img, price);
                addToCart(p);
                HttpSession session = request.getSession();
                System.out.println(cart.size());
                session.setAttribute("cart", cart);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/Cart.jsp");
                dispatcher.forward(request, response);
            } else if (command.equals("removeFromCart")) {
                Product p = new Product(Integer.parseInt(id), productname, "", img, price);
                removeFromCart(p);
                HttpSession session = request.getSession();
                session.setAttribute("cart", cart);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/Cart.jsp");
                dispatcher.forward(request, response);
            } else if (command.equals("deleteCart")) {
                Product p = new Product(Integer.parseInt(id), productname, "", img, price);
                deleteFromCart(p);
                HttpSession session = request.getSession();
                System.out.println(cart.size());
                session.setAttribute("cart", cart);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/Cart.jsp");
                dispatcher.forward(request, response);
            } else if (command.equals("setCart")) {
                Product p = new Product(Integer.parseInt(id), productname, "", img, price);
                setCart(p, Integer.parseInt((String) request.getParameter("soluong")));
                HttpSession session = request.getSession();
                session.setAttribute("cart", cart);
                RequestDispatcher dispatcher = request.getRequestDispatcher("home");
                dispatcher.forward(request, response);
            }
        }
    }

    private void addToCart(Product p) {
        for (Cart item : cart) {
            if (item.getP().getProductId() == p.getProductId()) {
                item.setQuantity(item.getQuantity() + 1);
                return;
            }
        }
        System.out.println("them vao gio hang thanh cong");
        Cart c = new Cart();
        c.setP(p);
        c.setQuantity(1);
        cart.add(c);
    }

    private String removeFromCart(Product p) {
        for (Cart item : cart) {
            if (item.getP().getProductId() == p.getProductId()) {
                cart.remove(item);
                return "cart";
            }
        }
        return "cart";
    }

    private void setCart(Product p, int s) {
        boolean isFound = false;
        for (Cart item : cart) {
            if (item.getP().getProductId() == p.getProductId()) {
                item.setQuantity(item.getQuantity() + s);
                isFound = true;
                break;
            }
        }
        if (!isFound) {
            Cart c = new Cart();
            c.setP(p);
            c.setQuantity(s);
            cart.add(c);
        }
    }

    public String deleteFromCart(Product p) {
        for (Cart item : cart) {
            if (item.getP().getProductId() == p.getProductId() && item.getQuantity() > 1) {
                item.setQuantity(item.getQuantity() - 1);
                return "cart";
            }
        }
        return "cart";
    }
}