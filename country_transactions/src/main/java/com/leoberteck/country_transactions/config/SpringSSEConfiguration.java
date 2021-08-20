package com.leoberteck.country_transactions.config;

import java.util.Properties;
import java.util.regex.Pattern;

import org.apache.kafka.clients.consumer.ConsumerConfig;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import reactor.kafka.receiver.KafkaReceiver;
import reactor.kafka.receiver.ReceiverOptions;
import reactor.kafka.receiver.internals.ConsumerFactory;
import reactor.kafka.receiver.internals.DefaultKafkaReceiver;

@Configuration
public class SpringSSEConfiguration {

	@Value("${config.kafka.group-id}")
	private String groupId;
	@Value("${config.kafka.key-deserializer}")
	private String keyDeserializer;
	@Value("${config.kafka.value-deserializer}")
	private String valueDeserializer;
	@Value("${config.kafka.auto-offset-reset}")
	private String autoOffsetReset;
	@Value("${config.kafka.bootstrap-servers}")
	private String bootstrapServers;
	@Value("${config.kafka.topic}")
	private String diffTopic;

	@Bean
	public KafkaReceiver kafkaReceiver() {

		Properties configProps = new Properties();
		configProps.put(ConsumerConfig.BOOTSTRAP_SERVERS_CONFIG, bootstrapServers);
		configProps.put(ConsumerConfig.KEY_DESERIALIZER_CLASS_CONFIG, keyDeserializer);
		configProps.put(ConsumerConfig.VALUE_DESERIALIZER_CLASS_CONFIG, valueDeserializer);
		configProps.put(ConsumerConfig.AUTO_OFFSET_RESET_CONFIG, autoOffsetReset);
		configProps.put(ConsumerConfig.CLIENT_ID_CONFIG, groupId + "_client");
		configProps.put(ConsumerConfig.GROUP_ID_CONFIG, groupId);
		configProps.put(ConsumerConfig.MAX_POLL_RECORDS_CONFIG, 300);
		configProps.put(ConsumerConfig.ENABLE_AUTO_COMMIT_CONFIG, true);

		System.out.println(configProps);

		return new DefaultKafkaReceiver<>(ConsumerFactory.INSTANCE, ReceiverOptions.create(configProps).subscription(Pattern.compile(diffTopic)));
	}
}