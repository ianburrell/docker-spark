FROM openjdk:8-jdk

MAINTAINER Ian Burrell <iburrell@comscore.com>

ENV spark_ver 2.1.2

RUN mkdir -p /opt && \
    cd /opt && \
    curl http://www.us.apache.org/dist/spark/spark-${spark_ver}/spark-${spark_ver}-bin-hadoop2.7.tgz | \
        tar -zx && \
    ln -s spark-${spark_ver}-bin-hadoop2.7 spark-${spark_ver} && \
echo Spark ${spark_ver} installed in /opt

ENV SPARK_HOME /opt/spark-${spark_ver}
ENV PATH "${PATH}:${SPARK_HOME}}/bin"

