FROM FROM ubuntu:22.04 
#FROM arm64v8/eclipse-temurin:17-jre

ENV FC_LANG en-US LC_CTYPE en_US.UTF-8

WORKDIR /app

# add Metabase script and uberjar
USER metabase
ADD http://downloads.metabase.com/latest/metabase.jar /app/

# expose our default runtime port
EXPOSE 3000

CMD ["java", "-jar", "/app/metabase.jar"]
