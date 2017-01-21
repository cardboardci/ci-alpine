# Dockerized Alpine
[![Build Status](https://gitlab.com/jrbeverly-docker/docker-alpine/badges/master/build.svg)](https://gitlab.com/jrbeverly-docker/docker-alpine/commits/master) [![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000)](https://gitlab.com/jrbeverly-docker/docker-alpine/blob/master/LICENSE) [![Alpine v3.5](https://img.shields.io/badge/alpine-3.5-green.svg?maxAge=2592000)](https://alpinelinux.org/posts/Alpine-3.5.0-released.html)

A super small Docker image based on Alpine Linux. 

## Usage

It is suggested to use this as either a template or a base image.

## Volumes

Volumes exposed by the docker container.[^1]

| Volume | Description |
| --------------------------| ------------- |

## Ports

Ports exposed by the docker container.

| Port | Description |
| --------- | --------------------------------------------- |

## Build Arguments

Build arguments used in the system.

| Variable | Default | Description |
| ----------| --------------- |
| BUILD_DATE | - | The date which the image was built. |
| VERSION | - | The version of the image. |

## Environment Variables

Environment variables used in the system.

| Variable | Default | Description |
| ----------| --------------- |

### User and Group Mapping

All processes within the docker container will be run as the **docker user**, a non-root user.  The **docker user** is created on build with the user id `DUID` and a member of a group with group id `DGID`.  

Any permissions on the host operating system (OS) associated with either the user (`DUID`) or group (`DGID`) will be associated with the docker container.  The values of `DUID` and `DGID` are visible in the [Build Arguments](#Build-Arguments), and can be accessed by the the command:

```console
docker inspect -f '{{ index .Config.Labels "user" }}' $IMAGE
docker inspect -f '{{ index .Config.Labels "group" }}' $IMAGE
```

The notation of the build variables is short form for docker user id (`DUID`) and docker group id (`DGID`). 

[^1]: It is necessary to ensure that the **docker user** (`DUID`) has permission to access volumes. (see [User / Group Identifiers](#User-and-Group-Mapping)