FROM dockerfile/java:oracle-java8

RUN mkdir /opt/drop_services && mkdir /opt/drop_services/example
ADD ./target/dropwizard-example-0.7.1.jar /opt/drop_services/example/
ADD ./example.yml opt/drop_services/example/
ADD ./example.keystore opt/drop_services/example/
WORKDIR /opt/drop_services/example
