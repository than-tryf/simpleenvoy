#!/bin/bash

# Build JAVA service
cd service1
mvn clean install
cp target/service1-0.0.1-SNAPSHOT.jar ../service1-0.0.1-SNAPSHOT.jar

# Build GO service
cd ../servicego
go build
cp servicego ../serviceingo
