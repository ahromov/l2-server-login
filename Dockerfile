FROM openjdk:14-jdk-alpine
ARG DEPENDENCY=target/l2j-server-login-2.6.3.1
COPY ${DEPENDENCY}/config /app/config
COPY ${DEPENDENCY}/data /app/data
COPY ${DEPENDENCY}/libs /app/libs
ENTRYPOINT ["java","-cp","app:app/lib/*","java.com.l2jserver.loginserver.LoginServer"]