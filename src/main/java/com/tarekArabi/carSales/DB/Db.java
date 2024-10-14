package com.tarekArabi.carSales.DB;

import java.sql.*;

public class Db {
    static public Connection  con = null;

    public static Connection getCon() throws Exception {
        if (con == null) {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/carsales";
            String userName = "root";
            String password = "0tarek102030#";

            con = DriverManager.getConnection(url, userName, password);
        }
        return con;
    }

}
