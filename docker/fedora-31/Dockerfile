FROM fastide/linuxbrew-fedora:31

USER developer

COPY install.sh /tmp/
RUN bash -c ". ~/.profile && /tmp/install.sh"
