package com.example.CapstoneWesbite;
import java.sql.*;


public class DBConnection {
    public static Connection getConnection() throws Exception, ClassNotFoundException {
        try {
            final String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
            String dbName = "@localhost";
            String dbDriver = "oracle.jdbc.OracleDriver";
            String dbUsername = "SYSTEM";
            String dbPassword = "system";

            //Class.forName(dbDriver);
            Connection connection = DriverManager.getConnection(dbURL, dbUsername, dbPassword);
            System.out.println("Successfully Connected!");
            return connection;

        } catch (Exception e){
            System.out.println("Error Creating the Database");
            System.out.println(e.getMessage());
        }
        return null;
    }


}
