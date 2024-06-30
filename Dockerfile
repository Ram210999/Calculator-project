FROM openjdk:11-jre-slim 
# Install dependencies for AWT and Swing
RUN apt-get update && \
    apt-get install -y libxrender1 libxtst6 libxi6 libxext6 libx11-6 && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY target/Calculator-1.0-SNAPSHOT.jar /app
EXPOSE 9999
CMD ["java", "-jar", "/app/Calculator-1.0-SNAPSHOT.jar"]

