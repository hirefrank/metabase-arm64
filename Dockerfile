FROM eclipse-temurin:17-jdk

# ENV FC_LANG en-US LC_CTYPE en_US.UTF-8

# WORKDIR /app

# # add Metabase script and uberjar
# USER metabase
# ADD http://downloads.metabase.com/latest/metabase.jar /app/

# # expose our default runtime port
# EXPOSE 3000

CMD ["java", "-jar", "/app/metabase.jar"]
