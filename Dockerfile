FROM maven:3.6.1-jdk-8

USER root
COPY predilogin.cer $JAVA_HOME/jre/lib/security
RUN \
    cd $JAVA_HOME/jre/lib/security \
    && keytool -keystore cacerts -storepass changeit -noprompt -trustcacerts -importcert -alias ldapcert -file predilogin.cer
