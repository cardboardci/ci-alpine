FROM alpine:3.4
MAINTAINER jrbeverly

# Environment Variables
#
# Environment variables present in the docker container.
ENV HOME=/

# Build Arguments
#
# Arguments used in the build process of the docker container.
ARG S6_OVERLAY_VERSION
ARG S6_OVERLAY_URL

# Provision
#
# Copy and execute provisioning scripts of the docker container.
COPY provision/install /tmp/install
RUN sh /tmp/install && rm -f /tmp/install 

COPY rootfs/ /

# Options
#
# Configuration options of the docker container.
ENTRYPOINT ["/init"]
CMD []

# Metadata Arguments
#
# Arguments used for the metadata of the docker container.
ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

# Metadata 
#
# The metadata of the docker container.
LABEL \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="docker-alpine" \
    org.label-schema.description="A minimal Docker image based on Alpine Linux designed for applications." \
    org.label-schema.url="https://alpinelinux.org/" \
    org.label-schema.license="MIT" \
    org.label-schema.vcs-type="Git" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://gitlab.com/jrbeverly-docker/docker-alpine.git" \
    org.label-schema.vendor="jrbeverly" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"