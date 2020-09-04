FROM adoptopenjdk/openjdk11:latest
# RUN addgroup -S spring && adduser -S spring -G spring
# USER spring:spring
ARG DEPENDENCY=target/*.jar
RUN mkdir -p app
RUN mkdir -p app/lib
RUN mkdir -p app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","DockerdemoApplication.Application"]