FROM fastide/bootstrap-ubuntu:19.04

USER developer

COPY install.sh /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
