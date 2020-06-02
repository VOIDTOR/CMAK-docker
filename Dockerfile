FROM openjdk:14-jdk-alpine

MAINTAINER VOIDTOR <caohaiwang@ergengtv.com>

ENV ZK_HOSTS=localhost:2181 \
    CMAK_VERSION=3.0.0.4 

RUN apk add --no-cache bash \
    bash-doc \
    bash-completion \
    && rm -rf /var/cache/apk/* \
    && /bin/bash  \
    && cd /  \
    && wget https://github.com/yahoo/CMAK/releases/download/${CMAK_VERSION}/cmak-${CMAK_VERSION}.zip \
    && unzip  -d / ./cmak-${CMAK_VERSION}.zip  \
    && rm -fr /cmak-${CMAK_VERSION}.zip  \
    && pwd \
    && ls cmak-${CMAK_VERSION}

WORKDIR /cmak-${CMAK_VERSION}

EXPOSE 9000
CMD[ "if [ -f ./RUNNING_PID ];then rm -f ./RUNNING_PID" fi]
CMD ["./bin/cmak","-Dconfig.file=conf/application.conf" ,"-Dhttp.port=9000"]