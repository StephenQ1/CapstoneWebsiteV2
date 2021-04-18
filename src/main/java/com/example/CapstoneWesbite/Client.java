package com.example.CapstoneWesbite;

import java.time.LocalDate;
import java.time.Period;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

public class Client {
    final private static AtomicInteger count = new AtomicInteger(1000);
    final private int client_ID;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private String streetAddress;
    private String city;
    private String state;
    private String postalCode;
    private LocalDate dateOfBirth;

    public Client(String firstName, String lastName, String phoneNumber, LocalDate dateOfBirth) {
        this.client_ID = count.incrementAndGet();
        this.firstName = firstName;
        this.lastName = lastName;
        this.phoneNumber = phoneNumber;
        this.dateOfBirth = dateOfBirth;
    }

    public int getClient_ID() {
        return client_ID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
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

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public int getClientsAge(LocalDate date){
        if ((this.dateOfBirth != null) && (date != null)) {
            return Period.between(this.dateOfBirth, date).getYears();
        } else {
            return 0;
        }
    }
}
