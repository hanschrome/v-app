FROM ubuntu:20.04

RUN apt-get update && apt-get install -y sudo software-properties-common && add-apt-repository ppa:ondrej/php && apt-get install -y language-pack-en-base && \
    export LC_ALL=en_US.UTF-8 export LANG=en_US.UTF-8 && apt-get update && \
    apt-get install -y software-properties-common wget git curl && \
    apt-get update && \
    apt-get install -y --allow-unauthenticated graphviz phpunit php7.1-cli php7.1-dev openjdk-8-jre libxext-dev libxrender-dev libxtst-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN useradd -m -s /bin/bash developer \
    && mkdir /home/developer/.PhpStorm2022.1 \
    && touch /home/developer/.PhpStorm2022.1/.keep \
    && chown -R developer.developer /home/developer \
    && mkdir /opt/phpstorm \
    && wget -O - https://download.jetbrains.com/webide/PhpStorm-2022.1.tar.gz | tar xzf - --strip-components=1 -C "/opt/phpstorm"

USER developer
CMD /opt/phpstorm/bin/phpstorm.sh
