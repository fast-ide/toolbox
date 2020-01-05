FROM fastide/bootstrap-fedora:30

USER developer

COPY install.sh /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
