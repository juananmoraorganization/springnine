FROM openjdk:11-alpine
ENTRYPOINT ["/usr/bin/springnine.sh"]

COPY springnine.sh /usr/bin/springnine.sh
COPY target/springnine.jar /usr/share/springnine/springnine.jar
