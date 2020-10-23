FROM golang:1.15-alpine
COPY install.sh /tmp
ENV USER root
RUN /tmp/install.sh && rm /tmp/install.sh
WORKDIR /root
