package com.tarekArabi.carSales.action;

import com.tarekArabi.carSales.DB.Db;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


@WebServlet("/brandupdate")
public class brandUpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String brandID = request.getParameter("id");
        String brandName = request.getParameter("name");


        if (brandID == null || brandID.isEmpty() ) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Required fields are missing");
            return;
        }

        try {
            String checkSql = "SELECT COUNT(*) FROM brand WHERE name = ?";
            Connection connection = Db.getCon();
            PreparedStatement checkStatement = connection.prepareStatement(checkSql);
            checkStatement.setString(1,brandID);
            ResultSet rs = checkStatement.executeQuery();
            rs.next();
            int count = rs.getInt(1);

            if (count > 0) {
                PrintWriter printWriter = response.getWriter();
                printWriter.print("Brand already exists");
            } else {
                String sql = "UPDATE brand set name = ? WHERE id=?";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1, brandID);
                preparedStatement.setString(2, brandName);
                preparedStatement.executeUpdate();

                PrintWriter printWriter = response.getWriter();
                printWriter.print("Brand updated successfully");
            }
        } catch(Exception ex) {
            ex.printStackTrace();

        }


    }

}
