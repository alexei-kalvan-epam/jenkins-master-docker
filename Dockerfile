FROM jenkins/jenkins:lts-alpine
MAINTAINER Alexei Kalvan <Alexei_Kalvan@epam.com>

ARG JENKINS_UID=1002
ARG JENKINS_GID=1002

USER root
ENV HOME /root

RUN apk --update upgrade \
    && apk add shadow \
    && usermod -u ${JENKINS_UID} jenkins \
    && groupmod -g ${JENKINS_GID} jenkins

USER jenkins
ENV HOME /var/jenkins_home
WORKDIR /var/jenkins_home
