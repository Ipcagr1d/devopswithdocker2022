FROM openjdk:8

WORKDIR /usr/src/app

EXPOSE 8080

RUN apt-get update -y && apt-get install -y unzip maven git

COPY . .

RUN ./mvnw package

CMD java -jar ./target/docker-example-1.1.3.jar
