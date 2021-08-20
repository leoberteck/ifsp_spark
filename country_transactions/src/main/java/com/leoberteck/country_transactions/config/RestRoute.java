package com.leoberteck.country_transactions.config;

import static org.springframework.web.reactive.function.server.RequestPredicates.GET;
import static org.springframework.web.reactive.function.server.ServerResponse.ok;

import com.leoberteck.country_transactions.handler.RestHandler;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.http.MediaType;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.RouterFunctions;
import org.springframework.web.reactive.function.server.ServerResponse;

@Configuration
public class RestRoute {

    @Value("classpath:/public/html/index.html") 
    private Resource indexHtml;

    @Bean
    public RouterFunction<ServerResponse> countrieRestFunctions(RestHandler handler) {
        return RouterFunctions
            .route(GET("/v1/actual-state"), handler::getCountries)
            .andRoute(GET("/v1/subscribe-live"), handler::subscribeToMonitoring)
            .andRoute(GET("/app/index"), request -> ok().contentType(MediaType.TEXT_HTML).bodyValue(indexHtml));
    }

}
