package models.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Product;

public class DBCrud {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> productList = new ArrayList<>();
        String sql = "SELECT * FROM product";

        try {
            conn = new MySQLConnector().getMySQLConnection();
            ps = conn.prepareStatement(sql);
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

    public static void main(String[] args) {
        DBCrud db = new DBCrud();
        List<Product> productList = db.getAllProduct();

        for (Product o : productList) {
            System.out.println(o);
        }
    }
}
