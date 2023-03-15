FROM cloudsihmar/maven:spring

WORKDIR /app

COPY . .

RUN mvn package && \
    mv target/s2-movie-info-service-0.0.1-SNAPSHOT.jar /run/movie.jar

EXPOSE 8082

CMD java -jar /run/movie.jar

