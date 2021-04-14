package com.example.CapstoneWesbite;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.time.LocalDate;
import java.util.Date;
import java.util.concurrent.ThreadLocalRandom;

import static java.lang.System.out;

@WebServlet("/quoteServlet")
public class QuoteServlet extends HttpServlet{
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connection = DBConnection.getConnection();
            assert connection != null;
            request.getRequestDispatcher("/login_show_quote.jsp").forward(request, response);
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getQuery(String sqlStatement) throws Exception {
        try {

            Connection connection = DBConnection.getConnection();
            assert connection != null;

            String output = "output";
            PreparedStatement statement = connection.prepareStatement(sqlStatement);
            ResultSet result = statement.executeQuery();
            ResultSetMetaData metaData = result.getMetaData();
            int numberOfColumns = metaData.getColumnCount() + 1;

            while (result.next()) { // As long as there is another object in the table
                for (int i = 1; i < numberOfColumns ; i++) {
                    //out.printf("%-12s\t", result.getObject(i));
                    output = result.getObject(i).toString();
                }
            }

            connection.close();
            return output;

        } catch (Exception e) {
            out.println("Error creating query out of the Table");
            out.println(e.getMessage());
        }
        return null;
    }
}
