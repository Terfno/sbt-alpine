FROM alpine:3.11

ARG SBT_VERSION=1.3.8

RUN apk update && \
  apk add --no-cache openjdk11-jre-headless curl bash
RUN curl -L -o sbt-${SBT_VERSION}.tgz https://piccolo.link/sbt-${SBT_VERSION}.tgz
RUN tar -xvzf sbt-${SBT_VERSION}.tgz
RUN rm sbt-${SBT_VERSION}.tgz

ENV PATH $PATH:/sbt/bin

RUN sbt -V

CMD [ "sh" ]
