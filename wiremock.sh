#!/bin/sh

echo $1
# Extract the mappings root dir from the first parameter
java -jar /opt/wiremock/wiremock.jar --root-dir $1
