FROM ubuntu:16.04 

LABEL Maintainer="andresnator@gmail.com" \
    Name=ubuntu-1604-jdk180_171 \
    Version=1.0.0 

ARG JAVA_HOME_ARG="/opt/jdk/jdk1.8.0_171"

ENV JAVA_HOME="$JAVA_HOME_ARG" \
    PATH="${PATH}:${JAVA_HOME_ARG}/bin:${JAVA_HOME_ARG}/jre/bin" 

## Install Java ##
ADD lib/jdk-8u171-linux-x64.tar.gz /opt/jdk/

## Install ##
RUN apt-get update -qq  
