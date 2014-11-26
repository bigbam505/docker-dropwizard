FROM dockerfile/java:oracle-java8

RUN mkdir /opt/drop_services && mkdir /opt/drop_services/example
ADD ./target/dropwizard-example-0.7.1.jar /opt/drop_services/example/dw-service-example.jar
ADD ./example.yml opt/drop_services/example/config.yml
ADD ./example.keystore opt/drop_services/example/ks.keystore
WORKDIR /opt/drop_services/example
