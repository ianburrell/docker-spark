FROM debian:stretch

MAINTAINER Ian Burrell <iburrell@comscore.com>

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk scala curl

RUN curl https://d3kbcqa49mib13.cloudfront.net/spark-2.1.1-bin-hadoop2.7.tgz | tar -xz -C /opt
RUN ln -s spark-2.1.1-bin-hadoop2.7 /opt/spark-2.1.1

ENV SPARK_HOME /opt/spark-2.1.1
ENV PATH "${PATH}:${SPARK_HOME}/bin"
