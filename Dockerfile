FROM ubuntu:20.04
RUN apt update -y
RUN apt install openjdk-17-jdk -y
WORKDIR /app
COPY target/*.war /app/app.war
EXPOSE 8079
CMD ["java","-jar","/app/app.war"]
