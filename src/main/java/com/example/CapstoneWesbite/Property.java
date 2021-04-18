package com.example.CapstoneWesbite;
import java.time.LocalDate;
import java.time.Period;
import java.util.concurrent.atomic.AtomicInteger;

public class Property {
    final private static AtomicInteger count = new AtomicInteger(3000);
    final private int property_ID;
    private Client client;
    private String type;
    private String streetAddress;
    private String city;
    private String state;
    private String country;
    private String postalCode;
    private double propertyValue;
    private LocalDate builtDate;
    //TODO: add a property equal to VIN in car class

/*    public Property(Client client) {
        this.property_ID = count.incrementAndGet();
        this.client = client;

    }*/

    public Property(Client client, String type, String streetAddress, String city, String postalCode, double propertyValue) {
        this.property_ID = count.incrementAndGet();
        this.client = client;
        this.type = type;
        this.streetAddress = streetAddress;
        this.city = city;
        this.postalCode = postalCode;
        this.propertyValue = propertyValue;
    }

    public int getProperty_ID() {
        return property_ID;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public double getPropertyValue() {
        return propertyValue;
    }

    public void setPropertyValue(double propertyValue) {
        this.propertyValue = propertyValue;
    }

    public LocalDate getBuiltDate() {
        return builtDate;
    }

    public void setBuiltDate(LocalDate builtDate) {
        this.builtDate = builtDate;
    }

    public int getPropertyAge(LocalDate today){
        if ((this.builtDate != null) && (today != null)) {
            return Period.between(this.builtDate, today).getYears();
        } else {
            return 0;
        }
    }
}
