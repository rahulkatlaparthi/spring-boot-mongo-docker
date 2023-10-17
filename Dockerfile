FROM openjdk:11

# Required for starting application up.
# RUN apk update && apk add /bin/sh

# RUN mkdir -p /opt/app
# ENV PROJECT_HOME /opt/app

COPY target/spring-boot-mongo-1.0.jar spring-boot-mongo.jar

# WORKDIR $PROJECT_HOME
EXPOSE 8060
CMD ["java" ,"-jar","spring-boot-mongo.jar"]
