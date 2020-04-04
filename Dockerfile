FROM ubuntu:bionic
RUN apt-get clean
RUN apt-get -y update
RUN apt-get -y install pokerth-server
RUN useradd -ms /bin/bash poker
EXPOSE 7234
USER poker
WORKDIR /home/poker
RUN cp -r /usr/share/games/pokerth .
RUN cp -r /usr/share/doc/pokerth-server ./pokerth/
RUN cp -r /usr/share/doc/pokerth-data ./pokerth/
RUN cp -r /usr/games/pokerth_server ./pokerth/
COPY resources/config.xml ./pokerth/
COPY resources/.pokerth/ ./.pokerth/

CMD ./pokerth/pokerth_server && tail -F ./.pokerth/log-files/server_messages.log