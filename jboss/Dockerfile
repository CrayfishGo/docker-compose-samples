FROM jboss/base-jdk:8
USER root
MAINTAINER evan_yang@amaxgs.com
ENV JBOSS_PATH=/opt/jboss
ENV JBOSS_HOME=/opt/jboss/jboss-eap-7.0
RUN mkdir -p ${JBOSS_PATH}
COPY jboss-eap-7.0 ${JBOSS_HOME}
WORKDIR /opt/jboss
RUN chgrp -R 0 ${JBOSS_HOME} && chmod -R g+rw ${JBOSS_HOME}
EXPOSE 8080 8443 3528 3529 55200 54200 7600 57600 9990 9993 8009
ENTRYPOINT ["/opt/jboss/jboss-eap-7.0/bin/standalone.sh", "-c", "standalone-full.xml", "-b", "0.0.0.0"]