#!/bin/bash
docker rm -f kafka-ui
docker run -p 8088:8080 --restart=always --name kafka-ui \
        -e KAFKA_CLUSTERS_0_NAME=local \
        -e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=127.0.0.1:9092 \
        -d provectuslabs/kafka-ui:latest
