package models.db;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Category;
import models.Order;
import models.Product;
import models.User;

public class DBCrud {

    // ket noi MySQL
    Connection conn = null;
    // Dua cau lenh querry sang MySQL
    PreparedStatement ps = null;
    // nhan ket qua tra ve
    ResultSet rs = null;

    // PRODUCT
    // tra ve tat ca san pham là một cái list product
    public List<Product> getAllProduct() {
        List<Product> productList = new ArrayList<>(); // de luu tất cả sp lên cía list này
        String sql = "SELECT * FROM product";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);
            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt(1);
                String productName = rs.getString(2);
                String description = rs.getString(3);
                String img = rs.getString(4);
                int price = rs.getInt(5);
                Product product = new Product(productId, productName, description, img, price);
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }

    public List<Product> getProductByCategory_id(String category_id) {
        List<Product> productList = new ArrayList<>(); // de luu tất cả sp lên cía list này
        String sql = "SELECT * FROM product WHERE category_id=?";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(1, category_id);// Set category_id vào dấu ? thứ nhất
            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt(1);
                String productName = rs.getString(2);
                String description = rs.getString(3);
                String img = rs.getString(4);
                int price = rs.getInt(5);
                Product product = new Product(productId, productName, description, img, price);
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }

    // VIEW PRODUCT DETAIL
    public List<Product> getProductByProduct_id(String product_id) {
        List<Product> productList = new ArrayList<>(); // de luu tất cả sp lên cía list này
        String sql = "SELECT * FROM product WHERE product_id=?";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(1, product_id);// Set category_id vào dấu ? thứ nhất
            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt(1);
                String productName = rs.getString(2);
                String description = rs.getString(3);
                String img = rs.getString(4);
                int price = rs.getInt(5);
                Product product = new Product(productId, productName, description, img, price);
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }

    // CATEGORY
    public List<Category> getAllCategory() {
        List<Category> categoryList = new ArrayList<>(); // de luu tất cả sp lên cía list này
        String sql = "SELECT * FROM category";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);
            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                int category_id = rs.getInt(1);
                String category_name = rs.getString(2);

                Category category = new Category(category_id, category_name);
                categoryList.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return categoryList;
    }

    public List<Product> searchProductByName(String txtSearch) {
        List<Product> productList = new ArrayList<>(); // de luu tất cả sp lên cía list này
        String sql = "SELECT * FROM product where product_name like ?";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(1, "%" + txtSearch + "%");// % để đúng với câu lệnh trong mysql
            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                int productId = rs.getInt(1);
                String productName = rs.getString(2);
                String description = rs.getString(3);
                String img = rs.getString(4);
                int price = rs.getInt(5);
                Product product = new Product(productId, productName, description, img, price);
                productList.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }

    public User login(String email, String password) {
        String sql = "SELECT * FROM  users where email =? and password = ?";
        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, password);
            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
            // TODO: handle exception
        }

        return null;
    }

    // kiểm tra tài khoản đã tồn tại chưa
    public User checkAccountExist(String email) {
        String sql = "SELECT * FROM users WHERE email = ?";
        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(1, email);

            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {
            // TODO: handle exception
        }

        return null;
    }

    public void createAccount(String email, String pass, String fullname, String phone, String address) {

        String sql = "insert into users(email, password, full_name, phone, address, role_id) \n" + //
                "values (?,?,?,?,?,2); ";
        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(1, email);
            ps.setString(2, pass);
            ps.setString(3, fullname);
            ps.setString(4, phone);
            ps.setString(5, address);

            // Vì không trả về dữ liệu hay kết quả ra nên chỉ cần update
            ps.executeUpdate();
            while (rs.next()) {

            }
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    // USER
    public List<User> getAllUser() {
        List<User> userList = new ArrayList<>(); // de luu tất cả sp lên cía list này
        String sql = "SELECT * FROM users";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);
            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                int user_id = rs.getInt(1);
                String address = rs.getString(2);
                String email = rs.getString(3);
                String fullname = rs.getString(4);
                String password = rs.getString(5);
                String phone = rs.getString(6);
                int role_id = rs.getInt(7);
                User user = new User(user_id, address, email, fullname, password, phone, role_id);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    // ORDER
    public List<Order> getAllOrder() {
        List<Order> orderList = new ArrayList<>(); // de luu tất cả sp lên cía list này
        String sql = "SELECT * FROM orders";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);
            // kết quả khi chạy câu lệnh querry
            rs = ps.executeQuery();
            while (rs.next()) {
                int order_id = rs.getInt(1);
                String address = rs.getString(2);
                Date order_date = rs.getDate(3);
                String phone = rs.getString(4);
                String status = rs.getString(5);
                int total = rs.getInt(6);
                Order order = new Order(order_id, address, order_date, phone, status, total);
                orderList.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orderList;
    }

    public void deleteProduct(String product_id) {
        String sql = "delete from product where product_id = ?";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);
            // kết quả khi chạy câu lệnh querry
            ps = conn.prepareStatement(sql);

            ps.setString(1, product_id);

            // Vì không trả về dữ liệu hay kết quả ra nên chỉ cần update
            ps.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public void deleteAccount(String user_id) {
        String sql = "delete from users where user_id = ?";

        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);
            // kết quả khi chạy câu lệnh querry
            ps = conn.prepareStatement(sql);

            ps.setString(1, user_id);

            // Vì không trả về dữ liệu hay kết quả ra nên chỉ cần update
            ps.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public void insertProduct(String productId, String productName, String categoryId, String img, String price,
            String description) {
        String sql = "insert into product(product_id,product_name,category_id,image,price,description) \n" +
                "values(?,?,?,?,?,?);";
        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(1, productId);
            ps.setString(2, productName);
            ps.setString(3, categoryId);
            ps.setString(4, img);
            ps.setString(5, price);
            ps.setString(6, description);

            // Vì không trả về dữ liệu hay kết quả ra nên chỉ cần update
            ps.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public void editProduct(String productName, String categoryId, String img, String price,
            String description, String productId) {
        String sql = "UPDATE product SET  product_name = ?,category_id = ?," +
                "image = ?,price = ?, description = ?  WHERE product_id = ?;";
        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(1, productName);
            ps.setString(2, categoryId);
            ps.setString(3, img);
            ps.setString(4, price);
            ps.setString(5, description);
            ps.setString(6, productId);
            // Vì không trả về dữ liệu hay kết quả ra nên chỉ cần update
            ps.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public void editAccount(String email, String fullname, String pass, String phone, String address, String userId) {
        String sql = "UPDATE users SET  email = ?,full_name = ?," +
                "password = ?,phone = ?, address = ?  WHERE user_id = ?;";
        try {
            // mở kết nối với MySQL
            conn = new MySQLConnector().getMySQLConnection();
            // Dua cau lenh querry sang MySQL
            ps = conn.prepareStatement(sql);

            ps.setString(2, email);
            ps.setString(2, fullname);
            ps.setString(3, pass);
            ps.setString(4, phone);
            ps.setString(5, address);
            ps.setString(6, userId);
            // Vì không trả về dữ liệu hay kết quả ra nên chỉ cần update
            ps.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    public static void main(String[] args) {
        DBCrud db = new DBCrud();
        List<Product> productList = db.searchProductByName("iphone 15");

        for (Product o : productList) {
            System.out.println(o);
        }
    }
}
