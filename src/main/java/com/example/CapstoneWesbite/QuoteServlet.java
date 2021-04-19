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
import static java.lang.System.setOut;

@WebServlet("/quoteServlet")
public class QuoteServlet extends HttpServlet{
    public static String userName;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//https://www.codejava.net/java-ee/servlet/how-to-forward-request-from-java-servlet-to-jsp-with-data
        try {
            //out.println("Printed from Servlet class: "+userName);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connection = DBConnection.getConnection();
            assert connection != null;

            //in the servlet’s doGet() / doPost() method, you need to get a
            // reference of RequestDispatcher from the request, passing the destination page.
            String destination = "login_show_quote.jsp";
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);

            //int SQL_client_id = 4216;
            //userName = request.getParameter("username"); 900f-1001
//            int SQL_client_id = Integer.parseInt(getQuery("Select CLIENT_ID from SMJ_CLIENT WHERE client_email ='" + userName+"' "));
            String SQL_client_id = getQuery("Select CLIENT_ID from SMJ_CLIENT WHERE client_email ='" + userName+"' ");
            //out.println("ID: "+ SQL_client_id);
            /*int SQL_carID = Integer.parseInt(getQuery("Select CAR_ID from SMJ_CAR where CLIENT_ID = "+SQL_client_id));*/
            String SQL_carID = getQuery("Select CAR_ID from SMJ_CAR where CLIENT_ID = "+SQL_client_id);
            //out.println("Car ID: "+ SQL_carID);
            /*int SQL_carQuoteNumber = Integer.parseInt(getQuery("Select QUOTE_NUMBER from SMJ_QUOTECAR where CAR_ID = "+SQL_carID));
            int SQL_autoPolicyNumber = Integer.parseInt(getQuery("Select POLICY_NUMBER from SMJ_AUTOPOLICY where QUOTE_NUMBER = " + SQL_carQuoteNumber));*/
            String SQL_carQuoteNumber = getQuery("Select QUOTE_NUMBER from SMJ_QUOTECAR where CAR_ID = "+SQL_carID);
            String SQL_autoPolicyNumber = getQuery("Select POLICY_NUMBER from SMJ_AUTOPOLICY where QUOTE_NUMBER = " + SQL_carQuoteNumber);

            String SQL_property_id = getQuery("Select PROPERTY_ID from SMJ_PROPERTY where CLIENT_ID =" + SQL_client_id);
            String SQL_propertyQuoteNumber = getQuery("select QUOTE_NUMBER from SMJ_QUOTEPROPERTY where PROPERTY_ID = "+ SQL_property_id);
            String SQL_propertyPolicyNumber = getQuery("select POLICY_NUMBER from SMJ_PROPERTYPOLICY where QUOTE_NUMBER = "+SQL_propertyQuoteNumber);



            //String SQL_fname = "Select first_name from SMJ_CLIENT WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_fname = "Select first_name from SMJ_CLIENT WHERE client_id =" + SQL_client_id;
            String SQL_lname = "Select last_name from SMJ_CLIENT WHERE client_id =" + SQL_client_id;
            String SQL_phone = "Select phone_number from SMJ_CLIENT WHERE client_id =" + SQL_client_id;
            String SQL_email = "Select CLIENT_EMAIL from SMJ_CLIENT WHERE client_id =" + SQL_client_id;

            String SQL_carMake = "Select MAKE from SMJ_CAR WHERE client_id =" + SQL_client_id;
            String SQL_carModel = "Select MODEL from SMJ_CAR WHERE client_id =" + SQL_client_id;
            String SQL_carYear = "Select YEAR from SMJ_CAR WHERE client_id =" + SQL_client_id;
            String SQL_carColor = "Select COLOR from SMJ_CAR WHERE client_id =" + SQL_client_id;
            String SQL_autoPolicyPremiumValue = "Select PREMIUM from SMJ_AUTOPOLICY where POLICY_NUMBER = " + SQL_autoPolicyNumber;
            String SQL_issuedDate = "Select CREATED_DATE from SMJ_AUTOPOLICY where POLICY_NUMBER =" + SQL_autoPolicyNumber;
            String SQL_autoPolicyExpireDate = "Select EXPIRE_DATE from SMJ_AUTOPOLICY where POLICY_NUMBER = " + SQL_autoPolicyNumber;

            String SQL_property_address = "select STREET_NUMBER from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_city = "select CITY from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_province = "select STATE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_country = "select COUNTRY from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_postalcode = "select POSTAL_CODE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_location = "select PROPERTY_LOCATION_TYPE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_heatingType = "select PROPERTY_HEATING_TYPE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_dweType = "select TYPE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_propertyPremiumValue = "select PREMIUM from SMJ_PROPERTYPOLICY where POLICY_NUMBER = " + SQL_propertyPolicyNumber;
            String SQL_propertyPolicyIssuedDate = "select CREATED_DATE from SMJ_PROPERTYPOLICY where POLICY_NUMBER = " + SQL_propertyPolicyNumber;
            String SQL_propertyPolicyExpireDate = "select EXPIRE_DATE from SMJ_PROPERTYPOLICY where POLICY_NUMBER = " + SQL_propertyPolicyNumber;

            /*String finalQuery = "--------------- Auto Policy ------------------ \n" +
                    "\tClient Name: \t\t\t\t" + getQuery(SQL_fname) + " " + getQuery(SQL_lname) + "\n" +
                    "\tClient phone number: \t\t" + getQuery(SQL_phone).toString() + "\n" +
                    "\tClient E-mail: \t\t" + getQuery(SQL_email) + "\n" +
                    "\tClient Vehicle Make: \t\t" + getQuery(SQL_carMake) + "\n" +
                    "\tClient Vehicle Model: \t\t" + getQuery(SQL_carModel) + "\n" +
                    "\tClient car Year: \t\t\t" + getQuery(SQL_carYear) + "\n" +
                    "\tClient Vehicle Color: \t\t" + getQuery(SQL_carColor) + "\n" +
                    "\n" +
                    "\n" +
                    "\tCar quote amount:\t\t\t" + getQuery(SQL_quoteAmount) + "\n" +
                    "";*/

            String clientFinalPolicy =
                    "<style>\n" +
                            " .topHeading {text-align: center;\n" +
                            "}\n" +

                            "</style>" +
                            "<div>" +
                            "<p class=\"topHeading\"> ------------------ Auto Policy --------------------- </p>\n" +
                            "<p>\t Date: &emsp; &ensp; &emsp; &ensp;" + dateTrimmer(getQuery(SQL_issuedDate)) + "</p>"+
                            "<p>\t Valid Until: &emsp; &ensp; &emsp; &ensp;" + dateTrimmer(getQuery(SQL_autoPolicyExpireDate)) + "</p>"+
                            "<p>\t Policy Number: &emsp; &ensp;" +  SQL_autoPolicyNumber + "</p><br>"+
                            /*"<p>\tClient Name: &nbsp;&nbsp;&nbsp;&nbsp;" + getQuery(SQL_fname) + " " + getQuery(SQL_lname) + "</p>\n" +*/
                            "<p>\tClient Name: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_fname) + " " + getQuery(SQL_lname) + "</p>\n" +

                            "<p>\tClient Phone Number: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_phone).toString() + "</p>\n" +
                            "<p>\tClient E-mail: &emsp; &ensp; &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_email) + "</p>\n" +
                            "<p>\tClient Vehicle Make: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_carMake) + "</p>\n" +
                            "<p>\tClient Vehicle Model: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_carModel) + "</p>\n" +
                            "<p>\tClient Vehicle Year: &emsp; &ensp; &emsp; &ensp; &emsp; &emsp; " + getQuery(SQL_carYear) + "</p>\n" +
                            "<p>\tClient Vehicle Color: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_carColor) + "</p>\n" + "<br>\n"+
                            "<p> ========================================</p>\n" +
                            "<p>\tPremium Amount:&emsp; &ensp; &emsp; &ensp;$" + getQuery(SQL_autoPolicyPremiumValue) + " / year </p><br><hr>\n" +
                            "<p class=\"topHeading\" > ------------------ Property Policy --------------------- </p\n>" +
                            "<p>\t Date: &emsp; &ensp; &emsp; &ensp;" + dateTrimmer(getQuery(SQL_issuedDate)) + "</p>"+
                            "<p>\t Valid Until: &emsp; &ensp; &emsp; &ensp;" + dateTrimmer(getQuery(SQL_autoPolicyExpireDate)) + "</p>"+
                            "<p>\t Policy Number: &emsp; &ensp;" +  SQL_propertyPolicyNumber + "</p><br>"+
                            "<p>\tProperty Address:&emsp; " + getQuery(SQL_property_address)+ ",&emsp;" + getQuery(SQL_property_city) + "&emsp;"
                            + getQuery(SQL_property_province) + ".&emsp;" + getQuery(SQL_property_country) +
                            " &emsp;" + getQuery(SQL_property_postalcode) +"</p>" +
                            "<br>\n" +
                            "<p>\tProperty Location:&emsp; &ensp;&emsp; &ensp;" + getQuery(SQL_property_location) + "</p>" +
                            "<p>\tType of Dwelling:&emsp; &ensp;&emsp; &ensp;" + getQuery(SQL_property_dweType) + "</p>" +
                            "<p>\tType of Heating:&emsp; &ensp;&emsp; &ensp;" +getQuery(SQL_property_heatingType) +"</p><br>\n" +
                            "<p>========================================</p>\n" +
                            "<p>Premium Amount:&emsp; &ensp;$" + getQuery(SQL_propertyPremiumValue) + " / year</p>\n" +
                            "</div>";



            // To send data from the servlet to the JSP page, we should set attributes
            // for the request object in the form of name-value
            request.setAttribute("final_Output", clientFinalPolicy);
            //request.setAttribute("final_Output", userName);

            // Then we call the forward() method on the RequestDispatcher() object
            requestDispatcher.forward(request, response);

            //out.println(userName);


            //out.println(newResult);
            //out.println(clientFinalPolicy);
            //request.getRequestDispatcher("/login_show_quote.jsp").forward(request, response);
            //PrintWriter out = response.getWriter();
/*            out.println("<html><body>" +
                    "<b>Successfully Inserted into the table!" + newResult +
                   "</b></body></html>");*/
/*            out.println("<html>\n" +
                    "<title>Taylor Insurance - Show Previous Quote</title>\n" +
                    "<body id=\"wrapbot\" class=\"backgroundImages\" style=\"background-image: url('Photos/aboutBackground.jpg');\">\n" +

                    clientFinalPolicy+

                    "</body>\n" +
                    "</html>");*/


        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**
     * This method pulls the requested object in form of SQL query from the DB
     * @param sqlStatement A string as SQL query statement
     * @return A string form of stored data from DB
     * @throws Exception
     */
    public String getQuery(String sqlStatement) throws Exception {
        try {
            Connection connection = DBConnection.getConnection();
            assert connection != null;

            String output = "empty String";
            PreparedStatement statement = connection.prepareStatement(sqlStatement);
            ResultSet result = statement.executeQuery();
            ResultSetMetaData metaData = result.getMetaData();
            int numberOfColumns = metaData.getColumnCount() + 1;

            while (result.next()) { // As long as there is another object in the table
                for (int i = 1; i < numberOfColumns ; i++) {
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

    /**
     * Takes a String form of the date (pulled from DB) and returns
     * a trimmed version of it without hours, minutes and seconds
     * @param date in form of String
     * @return trimmed substring
     */
    public String dateTrimmer(String date){
        return date.substring(0, 10);

    }
}


/*
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
import static java.lang.System.setOut;

@WebServlet("/quoteServlet")
public class QuoteServlet extends HttpServlet{
    public static String userName;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//https://www.codejava.net/java-ee/servlet/how-to-forward-request-from-java-servlet-to-jsp-with-data
        try {
            //out.println("Printed from Servlet class: "+userName);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connection = DBConnection.getConnection();
            assert connection != null;

            //in the servlet’s doGet() / doPost() method, you need to get a
            // reference of RequestDispatcher from the request, passing the destination page.
            String destination = "login_show_quote.jsp";
            RequestDispatcher requestDispatcher = request.getRequestDispatcher(destination);

            //int SQL_client_id = 4216;
            //userName = request.getParameter("username"); 900f-1001
//            int SQL_client_id = Integer.parseInt(getQuery("Select CLIENT_ID from SMJ_CLIENT WHERE client_email ='" + userName+"' "));
            String SQL_client_id = getQuery("Select CLIENT_ID from SMJ_CLIENT WHERE client_email ='" + userName+"' ");
            //out.println("ID: "+ SQL_client_id);
            */
/*int SQL_carID = Integer.parseInt(getQuery("Select CAR_ID from SMJ_CAR where CLIENT_ID = "+SQL_client_id));*//*

            String SQL_carID = getQuery("Select CAR_ID from SMJ_CAR where CLIENT_ID = "+SQL_client_id);
            //out.println("Car ID: "+ SQL_carID);
            */
/*int SQL_carQuoteNumber = Integer.parseInt(getQuery("Select QUOTE_NUMBER from SMJ_QUOTECAR where CAR_ID = "+SQL_carID));
            int SQL_autoPolicyNumber = Integer.parseInt(getQuery("Select POLICY_NUMBER from SMJ_AUTOPOLICY where QUOTE_NUMBER = " + SQL_carQuoteNumber));*//*

            String SQL_carQuoteNumber = getQuery("Select QUOTE_NUMBER from SMJ_QUOTECAR where CAR_ID = "+SQL_carID);
            String SQL_autoPolicyNumber = getQuery("Select POLICY_NUMBER from SMJ_AUTOPOLICY where QUOTE_NUMBER = " + SQL_carQuoteNumber);

            String SQL_property_id = getQuery("Select PROPERTY_ID from SMJ_PROPERTY where CLIENT_ID =" + SQL_client_id);
            String SQL_propertyQuoteNumber = getQuery("select QUOTE_NUMBER from SMJ_QUOTEPROPERTY where PROPERTY_ID = "+ SQL_property_id);
            String SQL_propertyPolicyNumber = getQuery("select POLICY_NUMBER from SMJ_PROPERTYPOLICY where QUOTE_NUMBER = "+SQL_propertyQuoteNumber);



            //String SQL_fname = "Select first_name from SMJ_CLIENT WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_fname = "Select first_name from SMJ_CLIENT WHERE client_id =" + SQL_client_id;
            String SQL_lname = "Select last_name from SMJ_CLIENT WHERE client_id =" + SQL_client_id;
            String SQL_phone = "Select phone_number from SMJ_CLIENT WHERE client_id =" + SQL_client_id;
            String SQL_email = "Select CLIENT_EMAIL from SMJ_CLIENT WHERE client_id =" + SQL_client_id;

            String SQL_carMake = "Select MAKE from SMJ_CAR WHERE client_id =" + SQL_client_id;
            String SQL_carModel = "Select MODEL from SMJ_CAR WHERE client_id =" + SQL_client_id;
            String SQL_carYear = "Select YEAR from SMJ_CAR WHERE client_id =" + SQL_client_id;
            String SQL_carColor = "Select COLOR from SMJ_CAR WHERE client_id =" + SQL_client_id;
            String SQL_autoPolicyPremiumValue = "Select PREMIUM from SMJ_AUTOPOLICY where POLICY_NUMBER = " + SQL_autoPolicyNumber;
            String SQL_issuedDate = "Select CREATED_DATE from SMJ_AUTOPOLICY where POLICY_NUMBER =" + SQL_autoPolicyNumber;
            String SQL_autoPolicyExpireDate = "Select EXPIRE_DATE from SMJ_AUTOPOLICY where POLICY_NUMBER = " + SQL_autoPolicyNumber;

            String SQL_property_address = "select STREET_NUMBER from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_city = "select CITY from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_province = "select STATE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_country = "select COUNTRY from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_postalcode = "select POSTAL_CODE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_location = "select PROPERTY_LOCATION_TYPE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_heatingType = "select PROPERTY_HEATING_TYPE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_property_dweType = "select TYPE from SMJ_PROPERTY where CLIENT_ID = " + SQL_client_id;
            String SQL_propertyPremiumValue = "select PREMIUM from SMJ_PROPERTYPOLICY where POLICY_NUMBER = " + SQL_propertyPolicyNumber;
            String SQL_propertyPolicyIssuedDate = "select CREATED_DATE from SMJ_PROPERTYPOLICY where POLICY_NUMBER = " + SQL_propertyPolicyNumber;
            String SQL_propertyPolicyExpireDate = "select EXPIRE_DATE from SMJ_PROPERTYPOLICY where POLICY_NUMBER = " + SQL_propertyPolicyNumber;

            */
/*String finalQuery = "--------------- Auto Policy ------------------ \n" +
                    "\tClient Name: \t\t\t\t" + getQuery(SQL_fname) + " " + getQuery(SQL_lname) + "\n" +
                    "\tClient phone number: \t\t" + getQuery(SQL_phone).toString() + "\n" +
                    "\tClient E-mail: \t\t" + getQuery(SQL_email) + "\n" +
                    "\tClient Vehicle Make: \t\t" + getQuery(SQL_carMake) + "\n" +
                    "\tClient Vehicle Model: \t\t" + getQuery(SQL_carModel) + "\n" +
                    "\tClient car Year: \t\t\t" + getQuery(SQL_carYear) + "\n" +
                    "\tClient Vehicle Color: \t\t" + getQuery(SQL_carColor) + "\n" +
                    "\n" +
                    "\n" +
                    "\tCar quote amount:\t\t\t" + getQuery(SQL_quoteAmount) + "\n" +
                    "";*//*


            String Quote_client_Autopolicy =
                    "<style>\n" +
                            " .topHeading {text-align: center;\n" +
                            "}\n" +

                            "</style>" +
                            "<div>" +
                            "<p class=\"topHeading\"> ------------------ Auto Policy --------------------- </p>\n" +
                            "<p>\t Date: " + getQuery(SQL_issuedDate) + "</p>"+
                            "<p>\t Valid Until: " + getQuery(SQL_autoPolicyExpireDate) + "</p>"+
                            "<p>\t Policy Number: " +  SQL_autoPolicyNumber + "</p><br>"+
                            */
/*"<p>\tClient Name: &nbsp;&nbsp;&nbsp;&nbsp;" + getQuery(SQL_fname) + " " + getQuery(SQL_lname) + "</p>\n" +*//*

                            "<p>\tClient Name: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_fname) + " " + getQuery(SQL_lname) + "</p>\n" +

                            "<p>\tClient Phone Number: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_phone).toString() + "</p>\n" +
                            "<p>\tClient E-mail: &emsp; &ensp; &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_email) + "</p>\n" +
                            "<p>\tClient Vehicle Make: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_carMake) + "</p>\n" +
                            "<p>\tClient Vehicle Model: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_carModel) + "</p>\n" +
                            "<p>\tClient Vehicle Year: &emsp; &ensp; &emsp; &ensp; &emsp; &emsp; " + getQuery(SQL_carYear) + "</p>\n" +
                            "<p>\tClient Vehicle Color: &emsp; &ensp; &emsp; &ensp;" + getQuery(SQL_carColor) + "</p>\n" + "<br>\n"+
                            "<p> ========================================</p>\n" +
                            "<p>\tPremium Amount:&emsp; &ensp; &emsp; &ensp;$" + getQuery(SQL_autoPolicyPremiumValue) + " / year </p><br><hr>\n" +
                            "<p class=\"topHeading\" > ------------------ Property Policy --------------------- </p\n>" +
                            "<p>\t Date: " + getQuery(SQL_issuedDate) + "</p>"+
                            "<p>\t Valid Until: " + getQuery(SQL_autoPolicyExpireDate) + "</p>"+
                            "<p>\t Policy Number: " +  SQL_propertyPolicyNumber + "</p><br>"+
                            "<p>\tProperty Address:&emsp; " + getQuery(SQL_property_address)+ ",&emsp;" + getQuery(SQL_property_city) + "&emsp;"
                            + getQuery(SQL_property_province) + ".&emsp;" + getQuery(SQL_property_country) +
                            " &emsp;" + getQuery(SQL_property_postalcode) +"</p>" +
                            "<br>\n" +
                            "<p>\tProperty Location:&emsp; &ensp;&emsp; &ensp;" + getQuery(SQL_property_location) + "</p>" +
                            "<p>\tType of Dwelling:&emsp; &ensp;&emsp; &ensp;" + getQuery(SQL_property_dweType) + "</p>" +
                            "<p>\tType of Heating:&emsp; &ensp;&emsp; &ensp;" +getQuery(SQL_property_heatingType) +"</p><br>\n" +
                            "<p>========================================</p>\n" +
                            "<p>Premium Amount:&emsp; &ensp;$" + getQuery(SQL_propertyPremiumValue) + " / year</p>\n" +
                            "</div>";



            // To send data from the servlet to the JSP page, we should set attributes
            // for the request object in the form of name-value
            request.setAttribute("final_Output", Quote_client_Autopolicy);
            //request.setAttribute("final_Output", userName);

            // Then we call the forward() method on the RequestDispatcher() object
            requestDispatcher.forward(request, response);

            //out.println(userName);


            //out.println(newResult);
            //out.println(Quote_client_Autopolicy);
            //request.getRequestDispatcher("/login_show_quote.jsp").forward(request, response);
            //PrintWriter out = response.getWriter();
*/
/*            out.println("<html><body>" +
                    "<b>Successfully Inserted into the table!" + newResult +
                   "</b></body></html>");*//*

*/
/*            out.println("<html>\n" +
                    "<title>Taylor Insurance - Show Previous Quote</title>\n" +
                    "<body id=\"wrapbot\" class=\"backgroundImages\" style=\"background-image: url('Photos/aboutBackground.jpg');\">\n" +

                    Quote_client_Autopolicy+

                    "</body>\n" +
                    "</html>");*//*



        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    */
/**
     * This method pulls the requested object in form of SQL query from the DB
     * @param sqlStatement A string as SQL query statement
     * @return A string form of stored data from DB
     * @throws Exception
     *//*

    public String getQuery(String sqlStatement) throws Exception {
        try {
            Connection connection = DBConnection.getConnection();
            assert connection != null;

            String output = "empty String";
            PreparedStatement statement = connection.prepareStatement(sqlStatement);
            ResultSet result = statement.executeQuery();
            ResultSetMetaData metaData = result.getMetaData();
            int numberOfColumns = metaData.getColumnCount() + 1;

            while (result.next()) { // As long as there is another object in the table
                for (int i = 1; i < numberOfColumns ; i++) {
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

*/

