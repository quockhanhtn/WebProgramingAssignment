package com.quockhanh.model;

public class ErrorHandingModel {
    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getNameOnCard() {
        return nameOnCard;
    }

    public void setNameOnCard(String nameOnCard) {
        this.nameOnCard = nameOnCard;
    }

    public String getCreditNumber() {
        return creditNumber;
    }

    public void setCreditNumber(String creditNumber) {
        this.creditNumber = creditNumber;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }

    public ErrorHandingModel(String quantity, String name, String phoneNumber, String nameOnCard, String creditNumber, String expirationDate) {
        this.quantity = quantity;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.nameOnCard = nameOnCard;
        this.creditNumber = creditNumber;
        this.expirationDate = expirationDate;
    }

    private String quantity;
    private String name;
    private String phoneNumber;
    private String nameOnCard;
    private String creditNumber;
    private String expirationDate;
}
