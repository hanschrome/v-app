FROM ubuntu:20.04

RUN apt-get update && apt-get install -y sudo wget hicolor-icon-theme libqt5svg5 libqt5core5a \
	libqt5dbus5 libqt5gui5 libqt5network5 libqt5widgets5

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

RUN wget https://github.com/flameshot-org/flameshot/releases/download/v11.0.0/flameshot-11.0.0-1.ubuntu-20.04.amd64.deb
RUN dpkg -i flameshot-11.0.0-1.ubuntu-20.04.amd64.deb

USER developer
ENV HOME /home/developer
CMD /usr/bin/flameshot
