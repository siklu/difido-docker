FROM adoptopenjdk/openjdk8
#:x86_64-debian
#FROM openjdk:latest 

WORKDIR /difido

ADD files/ /difido

EXPOSE 8080

USER root

RUN apt-get update && apt-get install -y unzip
 
RUN unzip difido-server.zip 

RUN cp difido_config.properties difido-server/config/

RUN cp start.sh difido-server/bin/

CMD ["bash","difido-server/bin/start.sh"]

