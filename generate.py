import os
import json
import socket
import random
from datetime import datetime
from pathlib import Path
from confluent_kafka.admin import AdminClient
from confluent_kafka import SerializingProducer
from kafka_utils import create_topic_if_not_exists
from confluent_kafka.serialization import StringSerializer

os.system('clear')
os.environ["CURRPATH"] = str(Path(__file__).parent.absolute())
config = json.loads(open(os.environ["CURRPATH"] + '/local.properties.json').read())
kafka_topic = config['kafka_topic']
time_pattern = '%Y-%m-%d %H:%M:%S'

class Country:
    country_code: str
    next_balance_change: float
    timestamp: str

    def __init__(self, p_country_code):
        self.country_code = p_country_code
        self.next_balance_change = 0
        self.timestamp = datetime.now().strftime(time_pattern)

    def nextTransaction(self):
        self.next_balance_change = round(random.uniform(-99999, 99999), 2)
        # self.next_balance_change = 1
        self.timestamp = datetime.now().strftime(time_pattern)

    def toJSON(self):
        return json.dumps(self, default=lambda o: o.__dict__, sort_keys=True, indent=4)

    def __str__(self):
        return self.toJSON()

    def __repr__(self) -> str:
        return self.toJSON()
 
country_list = []

for i in config['country_codes']:
    country_list.append(Country(i))

admCli = AdminClient({'bootstrap.servers': config['kakfa_bootstrap_servers']})
create_topic_if_not_exists(client=admCli, topic=kafka_topic, confs={
    'num_partitions': 2,
    'retention.ms': '1800000',
    'delete.retention.ms': '1800000'
})

producer_conf = {
    'bootstrap.servers': config['kakfa_bootstrap_servers'],
    'client.id': socket.gethostname(), 
    'linger.ms': config['kafka_linger_ms'], 
    'compression.type': config['kafka_compression_type'],
    'key.serializer' : StringSerializer(),
    'value.serializer' : StringSerializer()
}
producer = SerializingProducer(producer_conf)


while True:
    for x in range(100):
        for country in country_list:
            country.nextTransaction()
            producer.produce(kafka_topic, key=country.country_code, value=str(country))
    producer.flush()