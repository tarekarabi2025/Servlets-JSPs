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


@WebServlet("/reg")
public class RegServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException, IOException {

        String fname = request.getParameter("fName");
        String lname = request.getParameter("lName");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String photo = request.getParameter("photo");

        if (email == null || email.isEmpty() || password == null || password.isEmpty() || photo == null || photo.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Required fields are missing");
            return;
        }
           try {
               String checkSql = "SELECT COUNT(*) FROM member WHERE email = ?";
               Connection connection = Db.getCon();
               PreparedStatement checkStatement = connection.prepareStatement(checkSql);
               checkStatement.setString(1, email);
               ResultSet rs = checkStatement.executeQuery();
               rs.next();
               int count = rs.getInt(1);

               if (count > 0) {
                   PrintWriter printWriter = response.getWriter();
                   printWriter.print("Email already exists");
               } else {


                   String sql = "Insert INTO member(fname,lname,mobile,email,password,photo)Values(?,?,?,?,?,?) ";

                   PreparedStatement preparedStatement = connection.prepareStatement(sql);
                   preparedStatement.setString(1, fname);
                   preparedStatement.setString(2, lname);
                   preparedStatement.setString(3, mobile);
                   preparedStatement.setString(4, email);
                   preparedStatement.setString(5, password);
                   preparedStatement.setString(6, photo);
                   preparedStatement.executeUpdate();

                   PrintWriter printWriter = response.getWriter();
                   printWriter.print("Registation successful");

               }
           }
            catch(Exception ex){
                System.out.println("good");

            }


    }

}
