FROM adoptopenjdk/openjdk11:debian-slim

EXPOSE 8080

ARG wiremock_version

RUN mkdir /opt/wiremock

COPY wiremock.sh /opt/wiremock/wiremock.sh
COPY wiremock-$wiremock_version/java8/build/libs/wiremock-jre8-standalone-$wiremock_version.jar /opt/wiremock/wiremock.jar

ENTRYPOINT ["/opt/wiremock/wiremock.sh"]
