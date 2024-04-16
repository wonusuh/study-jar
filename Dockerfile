FROM amazoncorretto:17

COPY sale-0.0.1-SNAPSHOT.jar /app/sale.jar

ENV APP_HOME /app
EXPOSE 8081
VOLUME /app/upload

WORKDIR $APP_HOME

ENTRYPOINT ["java","-jar","/app/sale.jar"]