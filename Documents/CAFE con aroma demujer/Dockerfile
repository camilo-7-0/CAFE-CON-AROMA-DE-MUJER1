FROM openjdk:17-jdk-slim

WORKDIR /app
COPY . .

RUN chmod +x ./gradlew
RUN ./gradlew build

CMD ["./gradlew", "bootRun"]
