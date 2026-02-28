FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN javac HelloWorld.java
CMD ["java","HelloWorld"]