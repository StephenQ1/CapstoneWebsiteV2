package com.example.CapstoneWesbite;
import java.time.LocalDate;
import java.util.Date;

public class QuoteProperty extends Quote{
    private Property quotedProperty;
    public QuoteProperty(LocalDate effectiveDate, LocalDate expireDate, LocalDate createdDate, Property quotedProperty) {
        super(effectiveDate, expireDate, createdDate);
        this.quotedProperty = quotedProperty;
    }

    public Property getQuotedProperty() {
        return quotedProperty;
    }

    public void setQuotedProperty(Property quotedProperty) {
        this.quotedProperty = quotedProperty;
    }

}
