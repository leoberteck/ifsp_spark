package com.leoberteck.country_transactions.repository;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.leoberteck.country_transactions.bean.CountryBean;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.r2dbc.core.DatabaseClient;
import org.springframework.stereotype.Repository;

import reactor.core.publisher.Flux;

@Repository
public class CountryRepository {

    private ObjectMapper mapper;
    private DatabaseClient client;
    private static Logger logger = LoggerFactory.getLogger(CountryRepository.class);

    @Autowired
    public CountryRepository(DatabaseClient client, ObjectMapper mapper) {
        this.client = client;
        this.mapper = mapper;
    }

    public Flux<JsonNode> getCountries(){
        return client.sql("select a.country_name, a.country_code, a.country_lat, a.country_long, a.balance from countries a")
            .map(row -> (JsonNode) mapper.valueToTree(new CountryBean(
                    row.get(0, String.class),
                    row.get(1, String.class),
                    row.get(2, Double.class),
                    row.get(3, Double.class),
                    row.get(4, Double.class)
                ))
            )
            .all();
    }

}