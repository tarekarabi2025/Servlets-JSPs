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


@WebServlet("/card")
public class carServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String year = request.getParameter("year");
        String price = request.getParameter("price");
        String modelId = request.getParameter("model_id");
        String brandId = request.getParameter("brand_id");

        if ( description==null ||description.isEmpty() ) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Required fields are missing");
            return;
        }

        try {
            String checkSql = "SELECT COUNT(*) FROM car WHERE description = ?";
            Connection connection = Db.getCon();
            PreparedStatement checkStatement = connection.prepareStatement(checkSql);
            checkStatement.setString(1,description);
            ResultSet rs = checkStatement.executeQuery();
            rs.next();
            int count = rs.getInt(1);

            if (count > 0) {
                PrintWriter printWriter = response.getWriter();
                printWriter.print("this car already exists");
            } else {
                String sql = "INSERT INTO car(brand_id,title,description,year,price,model_id) values(?,?,?,?,?,?)";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1, title);
                preparedStatement.setString(2,description );
                preparedStatement.setString(3, year);
                preparedStatement.setString(4,price );
                preparedStatement.setString(5, modelId);
                preparedStatement.setString(6, brandId);

                preparedStatement.executeUpdate();


                PrintWriter printWriter = response.getWriter();
                printWriter.print("Car added successfully");
            }
        } catch(Exception ex) {
            ex.printStackTrace();

        }


    }



}
