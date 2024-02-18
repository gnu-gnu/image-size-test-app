FROM openjdk:21 AS int-build
RUN microdnf install git && \
    git clone https://github.com/gnu-gnu/image-size-test-app
WORKDIR image-size-test-app
RUN chmod 700 mvnw
RUN ./mvnw clean package


#FROM gcr.io/distroless/java21-debian12
FROM openjdk:21
LABEL description="Echo IP Java Application"
EXPOSE 80
COPY --from=int-build image-size-test-app/target/app-in-host.jar /opt/app-in-image.jar
WORKDIR /opt
ENTRYPOINT [ "java", "-jar", "app-in-image.jar" ]
