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

@WebServlet("/helloServlet")
public class HelloServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {


        String SQL_Stm_Client = "insert into SMJ_CLIENT values (?, ?, ?, ?)";
        String SQL_Stm_Car = "insert into SMJ_CAR values (?, ?, ?, ?, ?, ?)";
        String SQL_Stm_Property = "insert into SMJ_PROPERTY values (?, ?, ?, ?, ?, ?, ?, ?)";
        String SQL_Stm_QuoteCar = "insert into SMJ_QUOTECAR values (?, ?, ?, ?, ?)";
        String SQL_Stm_QuoteProperty = "insert into SMJ_QUOTEPROPERTY values (?, ?, ?, ?, ?, ?)";
        String SQL_Stm_AutoPolicy = "insert into SMJ_AUTOPOLICY values (?, ?, ?, ?, ?, ?)";
        String SQL_Stm_PropertyPolicy = "insert into SMJ_PROPERTYPOLICY values (?, ?, ?, ?, ?, ?)";

        // NOTE: number of ? must match number of fields being posted for them to insert properly
        try {
            int client_id = ThreadLocalRandom.current().nextInt(1000, 10000 + 1);
            int car_id = ThreadLocalRandom.current().nextInt(2000, 10000 + 1);
            int property_id = ThreadLocalRandom.current().nextInt(3000, 10000 + 1);
            int car_quote_Number = ThreadLocalRandom.current().nextInt(4000, 10000 + 1);
            int property_quote_Number = ThreadLocalRandom.current().nextInt(5000, 10000 + 1);
            int auto_policy_Number = ThreadLocalRandom.current().nextInt(6000, 10000 + 1);
            int property_policy_Number = ThreadLocalRandom.current().nextInt(7000, 10000 + 1);

            Date issuedDate = new Date();

            String client_fName = request.getParameter("customer_fName"); // Came from the form
            String client_LName = request.getParameter("customer_LName");
            String client_MobileNumber = request.getParameter("phone_mobile");

            String car_VIN = "123XYZ456KLM";
            String car_Make = "Nissan";
            String car_Model = "Kick";
            int car_Year = Integer. parseInt((request.getParameter("auto_age_years")));
            String car_Color = "Red";

            String property_Type = "Whatever TYPE"; //request.getParameter("dwelling_type");
            String property_StreetNumber = "No. 000 Nowhere";
            String property_City = "Far far Away";
            String property_State = "NL";
            String property_Country = "Canada";
            String property_PostalCode = "A1E 5X8";

            double car_QuoteAmount = 25000.0;
            double car_DrivingArea = 1.0;
            double property_QuoteAmount = 255111.49;

            //TODO: Get these values from the premium calculation results
            double car_PremiumValue = 2500.00;
            double property_PremiumValue = 4444.49;

            String quoteType = "Regular";

            /*Client client = new Client(client_fName, client_LName, client_MobileNumber, LocalDate.now());
            Car car = new Car(client, car_VIN, car_Make, car_Year, car_QuoteAmount);
            Property property = new Property(client, property_Type, property_StreetNumber
                    ,property_City, property_PostalCode, property_QuoteAmount);
            QuoteCar quoteCar = new QuoteCar(LocalDate.now(), LocalDate.now(), LocalDate.now(), car, car_DrivingArea );
            QuoteProperty quoteProperty = new QuoteProperty(LocalDate.now(), LocalDate.now(), LocalDate.now(), property);
            AutoPolicy autopolicy = new AutoPolicy(quoteCar);
            PropertyPolicy propertyPolicy = new PropertyPolicy(quoteProperty);*/



            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection connection = DBConnection.getConnection();
            assert connection != null;

            PreparedStatement posted = connection.prepareStatement(SQL_Stm_Client);
            PreparedStatement posted_2 = connection.prepareStatement(SQL_Stm_Car);
            PreparedStatement posted_3 = connection.prepareStatement(SQL_Stm_Property);
            PreparedStatement posted_4 = connection.prepareStatement(SQL_Stm_QuoteCar);
            PreparedStatement posted_5 = connection.prepareStatement(SQL_Stm_QuoteProperty);
            PreparedStatement posted_6 = connection.prepareStatement(SQL_Stm_AutoPolicy);
            PreparedStatement posted_7 = connection.prepareStatement(SQL_Stm_PropertyPolicy);

            posted.setInt(1, client_id);
            posted.setString(2, client_fName);
            posted.setString(3, client_LName);
            posted.setString(4, client_MobileNumber);

            posted_2.setInt(1, car_id);
            posted_2.setInt(2, client_id);
            posted_2.setString(3, car_Make);
            posted_2.setString(4, car_Model);
            posted_2.setInt(5, car_Year);
            posted_2.setString(6, car_Color);

            posted_3.setInt(1, property_id);
            posted_3.setInt(2, client_id);
            posted_3.setString(3, property_Type);
            posted_3.setString(4, property_StreetNumber);
            posted_3.setString(5, property_City);
            posted_3.setString(6, property_State);
            posted_3.setString(7, property_Country);
            posted_3.setString(8, property_PostalCode);

            /*posted_4.setInt(1, car_quote_Number);
            posted_4.setInt(2, car_id);
            posted_4.setDouble(3, car_QuoteAmount);
            posted_4.setDate(4, (java.sql.Date) issuedDate);
            posted_4.setDate(5, (java.sql.Date) issuedDate);

            posted_5.setInt(1, property_quote_Number);
            posted_5.setInt(2, property_id);
            posted_5.setDouble(3, property_QuoteAmount);
            posted_5.setDate(4, (java.sql.Date) issuedDate);
            posted_5.setString(5, quoteType);
            posted_5.setDate(6, (java.sql.Date) issuedDate);

            posted_6.setInt(1, auto_policy_Number);
            posted_6.setInt(2, car_quote_Number);
            posted_6.setDouble(3, car_PremiumValue);
            posted_6.setDate(4, (java.sql.Date) issuedDate);
            posted_6.setDate(5, (java.sql.Date) issuedDate);
            posted_6.setDate(6, (java.sql.Date) issuedDate);

            posted_7.setInt(1, property_policy_Number);
            posted_7.setInt(2, property_quote_Number);
            posted_7.setDouble(3, property_PremiumValue);
            posted_7.setDate(4, (java.sql.Date) issuedDate);
            posted_7.setDate(5, (java.sql.Date) issuedDate);
            posted_7.setDate(6, (java.sql.Date) issuedDate);*/



            request.getRequestDispatcher("/quote_generated.jsp").forward(request, response);
//            getQuery("Select first_name from SMJ_CLIENT WHERE client_id = 446779 ");


            int SQL_client_id = 10001;
            int SQL_carID = Integer.parseInt(getQuery("Select CAR_ID from SMJ_CAR where CLIENT_ID = "+SQL_client_id));
            String SQL_fname = "Select first_name from SMJ_CLIENT WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_lname = "Select last_name from SMJ_CLIENT WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_phone = "Select phone_number from SMJ_CLIENT WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_carMake = "Select MAKE from SMJ_CAR WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_carModel = "Select MODEL from SMJ_CAR WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_carYear = "Select YEAR from SMJ_CAR WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_carColor = "Select COLOR from SMJ_CAR WHERE client_id =" + String.valueOf(SQL_client_id);
            String SQL_quoteAmount = "Select AMOUNT from SMJ_QUOTECAR where CAR_ID = " + String.valueOf(SQL_carID);

            String Quote_client_Autopolicy = "--------------- Auto Policy ------------------ \n" +
                    "\tClient Name: \t\t\t\t" + getQuery(SQL_fname) + " " + getQuery(SQL_lname) + "\n" +
                    "\tClient phone number: \t\t" + getQuery(SQL_phone).toString() + "\n" +
                    "\tClient Vehicle Make: \t\t" + getQuery(SQL_carMake) + "\n" +
                    "\tClient Vehicle Model: \t\t" + getQuery(SQL_carModel) + "\n" +
                    "\tClient car Year: \t\t\t" + getQuery(SQL_carYear) + "\n" +
                    "\tClient Vehicle Color: \t\t" + getQuery(SQL_carColor) + "\n" +
                    "\n" +
                    "\n" +
                    "\tCar quote amount:\t\t\t" + getQuery(SQL_quoteAmount) + "\n" +
                    "";

            //out.println(Quote_client_Autopolicy);

            //================================================

            /*String POJO_Objects_AutoPolicy = "--------------- Auto Policy ------------------ \n" +
                    "\tClient Name: \t\t\t\t" + client.getFirstName() + " " + client.getLastName() +
                    "\tClient phone number: \t\t" + client.getPhoneNumber() + "\n" +
                    "\tClient Vehicle Make: \t\t" + car.getMake() + "\n" +
                    "\tClient Vehicle Model: \t\t" + car.getModel() + "\n" +
                    "\tClient car Year: \t\t\t" + car.getYear() + "\n" +
                    "\tClient Vehicle Color: \t\t" + car.getColor() + "\n" +
                    "\n" +
                    "\n" +
                    "\tCar quote amount:\t\t\t" + quoteCar.getAmount();

            out.println(POJO_Objects_AutoPolicy);*/

            //================================================
            posted.executeUpdate();
            posted_2.executeUpdate();

            posted.close();
            posted_2.close();

            connection.close();

            PrintWriter out = response.getWriter();
//            out.println("<html><body>" +
//                    "<b>Successfully Inserted into the table!" +
//                    "</b></body></html>");




/*            //------------ From Stack over flow ---------
            request.setAttribute("queryResults", Quote_client_Autopolicy);
            RequestDispatcher dispatcher = request.getRequestDispatcher("/login.jsp");
            dispatcher.forward(request,  response);*/

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
            //output = result.getObject(1).toString();



/*            for (int i = 1; i < numberOfColumns; i++) {
                out.printf("%-12s\t", metaData.getColumnName(i));
            }
            out.println();

            for (int i = 1; i < numberOfColumns; i++) {
                out.print("--------------------");
            }
            out.println();*/

            while (result.next()) { // As long as there is another object in the table
                for (int i = 1; i < numberOfColumns ; i++) {
                    //out.printf("%-12s\t", result.getObject(i));
                    output = result.getObject(i).toString();
                }
                //out.println();
            }
            //out.println();

            connection.close();
            return output;

        } catch (Exception e) {
            out.println("Error creating query out of the Table");
            out.println(e.getMessage());
        }
        return null;
    }

    public void destroy() {
    }
}