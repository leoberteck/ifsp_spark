from os import popen
import sys
from typing import Dict
from confluent_kafka import avro, KafkaError
from confluent_kafka.admin import AdminClient, NewTopic

def create_topic_if_not_exists(client: AdminClient, topic: str, confs: dict = {}):
    """
        Create a topic if needed
        Examples of additional admin API functionality:
        https://github.com/confluentinc/confluent-kafka-python/blob/master/examples/adminapi.py
    """
    confs.setdefault('num_partitions', 1)
    confs.setdefault('replication_factor', 1)
    fs = client.create_topics([NewTopic(
         topic,
         num_partitions=confs.pop('num_partitions'),
         replication_factor=confs.pop('replication_factor'),
         config=confs
    )])
    for topic, f in fs.items():
        try:
            f.result()# The result itself is None
            print("Topic {} created".format(topic))
        except Exception as e:
            # Continue if error code TOPIC_ALREADY_EXISTS, which may be true
            # Otherwise fail fast
            if e.args[0].code() != KafkaError.TOPIC_ALREADY_EXISTS:
                print("Failed to create topic {}: {}".format(topic, e))
                sys.exit(1)
    return