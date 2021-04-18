package com.example.CapstoneWesbite;

import java.time.LocalDate;
import java.util.Date;
import java.util.concurrent.atomic.AtomicInteger;

abstract class Quote {
    final private static AtomicInteger count = new AtomicInteger(40000);
    final private int quoteNumber;
    private double amount;

    //TODO: Date vs. LocalDate
    private LocalDate effectiveDate;
    private LocalDate expireDate;
    private LocalDate createdDate;

    //TODO: discussion:
    private String quoteType;

    public Quote(LocalDate effectiveDate, LocalDate expireDate, LocalDate createdDate) {
        this.quoteNumber = count.incrementAndGet();
        //this.amount = amount;
        this.effectiveDate = effectiveDate;
        this.expireDate = expireDate;
        this.createdDate = createdDate;
    }

    public int getQuoteNumber() {
        return quoteNumber;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public LocalDate getEffectiveDate() {
        return effectiveDate;
    }

    public void setEffectiveDate(LocalDate effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    public LocalDate getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(LocalDate expireDate) {
        this.expireDate = expireDate;
    }

    public LocalDate getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(LocalDate createdDate) {
        this.createdDate = createdDate;
    }

    public String getQuoteType() {
        return quoteType;
    }

    //TODO: Discussion here on the abstract method
    //public Car getQuotedCar();
}
