#!/bin/sh
./mvnw clean package
mkdir target/extract
java -jar -Djarmode=layertools target/app-in-host.jar extract --destination target/extract
