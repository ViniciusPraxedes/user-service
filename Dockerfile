FROM openjdk:19

COPY target/*.jar app.jar
EXPOSE 8020
ENV USERNAME=${USERNAME}
ENV PASSWORD=${PASSWORD}

ENTRYPOINT ["java","-jar","/app.jar"]