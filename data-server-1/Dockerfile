FROM mongo:4.2.1-bionic
LABEL Name=mongodb-replication Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD /usr/games/fortune -a | cowsay

