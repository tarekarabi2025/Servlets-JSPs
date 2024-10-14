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


@WebServlet("/modeladd")
public class ModelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String brandid = request.getParameter("brand_id");
        String modelname = request.getParameter("name");


        if ( modelname==null ||modelname.isEmpty() ) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Required fields are missing");
            return;
        }

        try {
            String checkSql = "SELECT COUNT(*) FROM model WHERE name = ?";
            Connection connection = Db.getCon();
            PreparedStatement checkStatement = connection.prepareStatement(checkSql);
            checkStatement.setString(1,modelname);
            ResultSet rs = checkStatement.executeQuery();
            rs.next();
            int count = rs.getInt(1);

            if (count > 0) {
                PrintWriter printWriter = response.getWriter();
                printWriter.print("Model already exists");
            } else {
                String sql = "INSERT INTO model(name,brand_id) values(?,?)";
                PreparedStatement preparedStatement = connection.prepareStatement(sql);

                preparedStatement.setString(1, modelname);
                preparedStatement.setString(2, brandid );
                preparedStatement.executeUpdate();



                PrintWriter printWriter = response.getWriter();
                printWriter.print("Model added successfully");
            }
        } catch(Exception ex) {
            ex.printStackTrace();

        }


    }


}
