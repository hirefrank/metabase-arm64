FROM arm64v8/openjdk:11

# Set the environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-arm64
ENV PATH=$JAVA_HOME/bin:$PATH
ENV FC_LANG en-US LC_CTYPE en_US.UTF-8

WORKDIR /app

# add Metabase script and uberjar
USER metabase
ADD http://downloads.metabase.com/latest/metabase.jar /app/

# expose our default runtime port
EXPOSE 3000

CMD ["java", "-jar", "/app/metabase.jar"]
