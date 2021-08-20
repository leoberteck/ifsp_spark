package com.leoberteck.country_transactions.bean;

import com.fasterxml.jackson.databind.JsonNode;

public class CountryTransactionBean {
  // {"time_agg":{"start":"2021-08-16T23:50:45.000-03:00","end":"2021-08-16T23:50:50.000-03:00"},"country_code":"TL","balance_change":-11743.800375461578,"num_changes":1228}
  private String timestamp;
  private String countryCode;
  private Double balanceChange;
  private Double numChanges;
  private JsonNode content;
  
  public CountryTransactionBean() {
  }

  public CountryTransactionBean(JsonNode content) {
    this.content = content;
    this.timestamp = content.get("timestamp").asText();
    this.countryCode = content.get("country_code").asText();
    this.balanceChange = content.get("balance_change").asDouble(0);
    this.numChanges = content.get("num_changes").asDouble(0);
  }

  public JsonNode getContent() {
    return content;
  }

  public void setContent(JsonNode content) {
    this.content = content;
  }

  public String getTimestamp() {
    return timestamp;
  }

  public void setTimestamp(String timestamp) {
    this.timestamp = timestamp;
  }

  public String getCountryCode() {
    return countryCode;
  }

  public void setCountryCode(String countryCode) {
    this.countryCode = countryCode;
  }

  public Double getBalanceChange() {
    return balanceChange;
  }

  public void setBalanceChange(Double balanceChange) {
    this.balanceChange = balanceChange;
  }

  public Double getNumChanges() {
    return numChanges;
  }

  public void setNumChanges(Double numChanges) {
    this.numChanges = numChanges;
  }

  

}