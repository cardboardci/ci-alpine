#!/bin/bash
set -ex
cd /tmp/

apk add --update --no-cache ca-certificates coreutils tzdata bash
apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/community shadow 

groupmod -g 1000 users

apk add --no-cache bind-tools curl
curl -sSL ${S6_OVERLAY_URL} | tar xfz - -C /
apk del curl

rm -rf /tmp/* /var/tmp/* /var/cache/apk/*