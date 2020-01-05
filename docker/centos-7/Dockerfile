FROM fastide/bootstrap-centos:7

USER developer

COPY install.sh /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
