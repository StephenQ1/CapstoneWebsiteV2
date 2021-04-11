package com.example.CapstoneWesbite;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.util.concurrent.ThreadLocalRandom;

@WebServlet("/helloServlet")
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;


//    public void init() {
//        message = "SMJ Interactive!";
//    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String SQL_Statement_test = "insert into SMJ_CLIENT values (?, ?, ?, ?)";
                // NOTE: number of ? must match number of fields being posted for them to insert properly
        try {

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connection = DBConnection.getConnection();
            assert connection != null;
            PreparedStatement posted = connection.prepareStatement(SQL_Statement_test);
            posted.setInt(1, ThreadLocalRandom.current().nextInt(1000, 1000000 + 1));
            posted.setString(2, request.getParameter("customer_fName"));
            posted.setString(3, request.getParameter("customer_lName"));
            posted.setString(4, request.getParameter("phone_mobile"));
//            posted.executeUpdate();

            request.getRequestDispatcher("/quote_generated.jsp").forward(request, response);

            posted.executeUpdate();

            posted.close();

            connection.close();

            PrintWriter out = response.getWriter();
//            out.println("<html><body>" +
//                    "<b>Successfully Inserted into the table!" +
//                    "</b></body></html>");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void destroy() {
    }
}