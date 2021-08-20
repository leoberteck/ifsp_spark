package com.leoberteck.country_transactions.handler;

import static org.springframework.web.reactive.function.server.ServerResponse.ok;

import javax.annotation.PostConstruct;

import com.fasterxml.jackson.databind.JsonNode;
import com.leoberteck.country_transactions.bean.CountryTransactionBean;
import com.leoberteck.country_transactions.repository.CountryRepository;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.server.ServerRequest;
import org.springframework.web.reactive.function.server.ServerResponse;

import reactor.core.publisher.BufferOverflowStrategy;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import reactor.kafka.receiver.KafkaReceiver;

@Service
public class RestHandler {
    //https://www.baeldung.com/spring-server-sent-events
    private final KafkaReceiver<String, CountryTransactionBean> kafkaReceiver;
    private final CountryRepository countryRepository;
    private Flux<CountryTransactionBean> transactionsStream;

    @Autowired
    public RestHandler(KafkaReceiver<String, CountryTransactionBean> kafkaReceiver, CountryRepository countryRepository) {
        this.kafkaReceiver = kafkaReceiver;
        this.countryRepository = countryRepository;
    }

    @PostConstruct
    public void init() {
        transactionsStream = kafkaReceiver.receive()
        .publish()
        .autoConnect(1)
        .onBackpressureBuffer(5000, BufferOverflowStrategy.DROP_OLDEST)
        .map(ConsumerRecord::value);
    }

    public Mono<ServerResponse> getCountries(ServerRequest request) {
        return ok().contentType(MediaType.APPLICATION_JSON).body(countryRepository.getCountries(), JsonNode.class);
    }

    public Mono<ServerResponse> subscribeToMonitoring(ServerRequest serverRequest) {
        return ok().contentType(MediaType.APPLICATION_NDJSON).body(transactionsStream.map(t -> t.getContent()), JsonNode.class);
    }
}