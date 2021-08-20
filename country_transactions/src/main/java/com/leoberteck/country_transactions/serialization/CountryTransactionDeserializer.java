package com.leoberteck.country_transactions.serialization;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.leoberteck.country_transactions.bean.CountryTransactionBean;

import org.apache.kafka.common.serialization.Deserializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CountryTransactionDeserializer implements Deserializer<CountryTransactionBean> {

  private final Logger LOGGER = LoggerFactory.getLogger(CountryTransactionDeserializer.class);

  @Override
  public CountryTransactionBean deserialize(String topic, byte[] data) {
    CountryTransactionBean bean = null;
    ObjectMapper mapper = new ObjectMapper();
    JsonNode json = null;
    try {
      json = mapper.readTree(new String(data));
      bean = new CountryTransactionBean(json);
    } catch (Exception e) {
      LOGGER.error("Não foi possível interpretar o json: " + json.toPrettyString(), e);
    }
    return bean;
  }
}