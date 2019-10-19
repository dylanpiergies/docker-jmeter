FROM openjdk:8-alpine

ARG jmeter_version=5.1.1

RUN adduser -D jmeter && \
  cd /opt && \
  wget https://www-us.apache.org/dist/jmeter/binaries/apache-jmeter-${jmeter_version}.tgz && \
  tar xzvf apache-jmeter-${jmeter_version}.tgz && \
  ln -s /opt/apache-jmeter-${jmeter_version}/bin/* /usr/local/bin && \
  rm apache-jmeter-${jmeter_version}.tgz
