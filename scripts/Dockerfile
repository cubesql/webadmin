#BASE IMAGE
FROM ubuntu:22.04

#ENVIRONMENT
ENV CUBESQL_HOSTNAME=host.docker.internal
ENV CUBESQL_PORT=4430
ENV CUBESQL_ENCRYPTION=AES256
ENV CUBESQL_USERNAME=admin
ENV CUBESQL_PASSWORD=

#INSTALL REQUIRED LIBRARIES
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y libunwind8 libglib2.0 libsoup2.4-1

#ADD APPLICATION TO DOCKER IMAGE
ADD / /app/

#EXPOSE PORT AND RUN APPLICATION
EXPOSE 80
WORKDIR /app
CMD /app/cubeSQLWebAdmin