FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y
RUN apt-get update && apt-get install -y qbittorrent sudo

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD qbittorrent
