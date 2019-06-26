
#Docker

- KAFKA_ADVERTISED_HOST_NAME=0.0.0.0

docker-compose up -d

docker-compose scale kafka=3  

http://127.0.0.1:9000/

Add zookeeper:2181 to show


kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic test

kafka-console-consumer.sh --bootstrap-server 127.0.0.1:9092 --topic test --from-beginning
