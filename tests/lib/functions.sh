#!/bin/sh

# Tests
#
# A set of common functions that should be tested on the docker image.

install_apk()
{
    apk add --update zip >/dev/null 2>&1
}

is_empty_apk()
{
    ls -1 /var/cache/apk | wc -l >/dev/null 2>&1  
}