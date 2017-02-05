FROM alpine:3.5
MAINTAINER jrbeverly

# Build Arguments
#
# Arguments used in the build process of the docker container.
ARG S6_OVERLAY_VERSION=v1.18.1.5

# Environment Variables
#
# Environment variables present in the docker container.
ENV HOME=/

# Provision
#
# Copy and execute provisioning scripts of the docker container.
RUN apk add --no-cache bash

COPY provision/install /tmp/install
RUN sh /tmp/install ; sync; rm -f /tmp/install 

COPY rootfs/ /

# Options
#
# Configuration options of the docker container
ENTRYPOINT ["/init"]
CMD []

# Metdata Arguments
#
# Arguments used for the metadata of the docker container.
ARG BUILD_DATE
ARG VERSION

# Metadata 
#
# The metadata of the image.
LABEL app="Alpine Base Image"
LABEL description="A docker image configured to handle small docker containers."
LABEL version="${VERSION}"
LABEL build_date="${BUILD_DATE}"