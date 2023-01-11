FROM ubuntu:latest

COPY . .

RUN apt-get update && apt-get -y --no-install-recommends install \
    build-essential \
    openjdk-8-jdk \
    openjdk-8-jre-headless \
    maven
    
RUN cd /OpenRemote && mvn clean install -DskipTests 

EXPOSE 8080

CMD ["java", "-jar", "/OpenRemote/target/openremote-controller-3.8.1-SNAPSHOT.jar"]
