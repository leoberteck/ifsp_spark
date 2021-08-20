package com.leoberteck.country_transactions.bean;

public class CountryBean {
  private String countryName;
  private String countryCode;
  private Double countryLat;
  private Double countryLng;
  private Double balance;
  
  public CountryBean() {

  }

  public CountryBean(String countryName, String countryCode, Double countryLat, Double countryLng, Double balance) {
    this.countryName = countryName;
    this.countryCode = countryCode;
    this.countryLat = countryLat;
    this.countryLng = countryLng;
    this.balance = balance;
  }

  public String getCountryName() {
    return countryName;
  }

  public void setCountryName(String countryName) {
    this.countryName = countryName;
  }

  public String getCountryCode() {
    return countryCode;
  }

  public void setCountryCode(String countryCode) {
    this.countryCode = countryCode;
  }

  public Double getCountryLat() {
    return countryLat;
  }

  public void setCountryLat(Double countryLat) {
    this.countryLat = countryLat;
  }

  public Double getCountryLng() {
    return countryLng;
  }

  public void setCountryLng(Double countryLng) {
    this.countryLng = countryLng;
  }

  public Double getBalance() {
    return balance;
  }

  public void setBalance(Double balance) {
    this.balance = balance;
  }

  
}