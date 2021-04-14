package com.example.CapstoneWesbite;

import java.time.LocalDate;
import java.util.*;

public class QuoteCar extends Quote{
    final static double[] DRIVERS_AGE_FACTORS = {2.0, 1.0, 1.0};
    //final static HashMap<String, Double> DRIVING_LOCATION_FACTOR = new HashMap<String, Double>();

    private Car quotedCar;
    private double drivingArea;
    private double basePremium;

    public QuoteCar(LocalDate effectiveDate, LocalDate expireDate, LocalDate createdDate, Car quotedCar, double drivingArea) {
        super(effectiveDate, expireDate, createdDate);
        this.quotedCar = quotedCar;
        this.drivingArea = drivingArea;
    }

    public Car getQuotedCar() {
        return quotedCar;
    }

    public void setQuotedCar(Car quotedCar) {
        this.quotedCar = quotedCar;
    }

    public double getDrivingArea() {
        return drivingArea;
    }

    public void setDrivingArea(double drivingArea) {
        this.drivingArea = drivingArea;
    }

    public double getBasePremium() {
        return basePremium;
    }

    public void setBasePremium(double basePremium) {
        this.basePremium = basePremium;
    }

    /**
     * This method calculates premium value based on several different factors
     * Including:  driver's age, location of driving and accident history
     * @param accidentFactor
     */
    public void premiumCalculator(double accidentFactor){
        double driversAgeFactor = 0 ;
        int driversAge = this.quotedCar.getClient().getClientsAge(LocalDate.now());
        if (driversAge < 25) {
            driversAgeFactor = DRIVERS_AGE_FACTORS[0];
        } else if ((driversAge >= 25) && (driversAge <=50)){
            driversAgeFactor = DRIVERS_AGE_FACTORS[1];
        } else if (driversAge > 50) {
            driversAgeFactor = DRIVERS_AGE_FACTORS[1];
        } else {
            System.out.println("Something went wrong here for age calculation!!! ");
        }

        System.out.println("Premium");
        System.out.println("---------------------------------");
        System.out.println("Quote Number: \t\t"+this.getQuoteNumber());
        System.out.println("Driver first name: \t" + this.getQuotedCar().getClient().getFirstName());
        System.out.println("Driver last name: \t" + this.getQuotedCar().getClient().getLastName());
        System.out.println("VIN:\t\t\t\t" + this.getQuotedCar().getVIN());
        System.out.println("Make: \t\t\t\t" + this.getQuotedCar().getMake());
        System.out.println("Year:\t\t\t\t" + this.getQuotedCar().getYear());
        System.out.println("Base Premium:\t\t" + String.valueOf(this.basePremium));
        System.out.println();
        System.out.println("Factors:");
        System.out.println("Age\t\t\t\t\t"+ String.valueOf(driversAgeFactor));
        System.out.println("Driver's age\t\t" + driversAge);
        System.out.println("Accident Factor:\t" + String.valueOf(accidentFactor));
        System.out.println("=================================");
        System.out.println("Premium: \t\t\t" + this.basePremium * driversAgeFactor * accidentFactor * this.getDrivingArea());
    }
}
