FROM fastide/bootstrap-debian:10

USER developer

COPY install.sh /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
