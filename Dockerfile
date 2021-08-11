FROM openjdk:latest
WORKDIR /mserver
COPY ./server.jar .
COPY ./server.properties .
EXPOSE 25565
RUN echo eula=true > eula.txt
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]
