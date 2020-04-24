ARG OS_FAMILY
ARG OS_VERSION
FROM fastide/linuxbrew-${OS_FAMILY}:${OS_VERSION}

USER developer
COPY install.sh /tmp/
RUN /tmp/install.sh --build-bottle
