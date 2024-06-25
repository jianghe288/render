FROM ubuntu:22.04

RUN apt-get update -y && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo "root:render128" | chpasswd

CMD ["/usr/bin/shellinabox", "-t", "-s", "/:LOGIN"]
