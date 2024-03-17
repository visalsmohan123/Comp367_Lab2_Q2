FROM openjdk:17
COPY target/Comp367_Lab2_Q2-0.0.1-SNAPSHOT.jar Comp367_Lab2_Q2-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "Comp367_Lab2_Q2-0.0.1-SNAPSHOT.jar"]