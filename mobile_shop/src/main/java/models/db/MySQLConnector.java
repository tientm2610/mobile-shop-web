package models.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnector {

    public static Connection getMySQLConnection() {
        String hostName = "localhost";
        String dbName = "phone-store";
        String userName = "root";
        String password = "Butdeptrai123";

        return getMySQLConnection(hostName, dbName, userName, password);

    }

    private static Connection getMySQLConnection(String hostName, String dbName, String userName, String password) {

        String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(connectionURL, userName, password);
            System.out.println("connect successfully!");
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return conn;

    }

    public static void closeConnection(Connection conn) {
        try {
            if (conn != null)
                conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        try {
            System.out.println(new MySQLConnector().getMySQLConnection());
        } catch (Exception e) {
            // TODO: handle exception
        }
    }
}
