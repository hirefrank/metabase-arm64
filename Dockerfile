FROM arm64v8/eclipse-temurin:17-jre

ENV FC_LANG en-US LC_CTYPE en_US.UTF-8

WORKDIR /app

# add Metabase script and uberjar
USER metabase
ADD https://raw.githubusercontent.com/metabase/metabase/latest/bin/start /app/bin/
ADD http://downloads.metabase.com/latest/metabase.jar /app/target/uberjar/

# expose our default runtime port
EXPOSE 3000

ENTRYPOINT ["/app/bin/start"]
