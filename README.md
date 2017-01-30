# Dockerized Alpine
[![Build Status][ci-badge]][ci] [![MIT License][license-badge]][license] [![Alpine v3.5][alpine-badge]][alpine]

A super small Docker image based on Alpine Linux. 

## Usage

It is suggested to use this as either a template or a base image.

## Image Tags

Build tags available with the image `jrbeverly/alpine:{TAG}`.

| Tag | Description |
| --- | ----------- |
| `latest` | An alpine image based on the latest alpine version. |
| [`3.5`](../tree/3.5) | An alpine image based on the alpine version 3.5. |
| [`3.4`](../tree/3.4) | An alpine image based on the alpine version 3.4. |
| [`3.3`](../tree/3.3) | An alpine image based on the alpine version 3.3. |

## Build Arguments

Build arguments used in the system.

| Variable | Default | Description |
| -------- | ------- |------------ |
| BUILD_DATE | - | The date which the image was built. |
| VERSION | - | The version of the image. |

## Environment Variables

Environment variables used in the system.

| Variable | Default | Description |
| -------- | ------- |------------ |
| HOME | / | The pathname of the user's home directory. |
| S6_OVERLAY_VERSION | v1.18.1.5 | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) for containers. |

## Volumes

Volumes exposed by the docker container.[^1]

| Volume | Description |
| ------ | ----------- |

## Ports

Ports exposed by the docker container.

| Port | Description |
| ---- | ----------- |

### User and Group Mapping

All processes within the docker container will be run as the **docker user**, a non-root user.  The **docker user** is created on build with the user id `DUID` and a member of a group with group id `DGID`.  

Any permissions on the host operating system (OS) associated with either the user (`DUID`) or group (`DGID`) will be associated with the docker container.  The values of `DUID` and `DGID` are visible in the [Build Arguments](#Build-Arguments), and can be accessed by the the command:

```console
docker inspect -f '{{ index .Config.Labels "user" }}' $IMAGE
docker inspect -f '{{ index .Config.Labels "group" }}' $IMAGE
```

The notation of the build variables is short form for docker user id (`DUID`) and docker group id (`DGID`). 

[^1]: It is necessary to ensure that the **docker user** (`DUID`) has permission to access volumes. (see [User / Group Identifiers](#User-and-Group-Mapping)

[ci-badge]: ../badges/master/build.svg
[ci]: ../commits/master
[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license]: ../blob/master/LICENSE
[alpine-badge]: https://img.shields.io/badge/alpine-3.5-green.svg?maxAge=2592000
[alpine]: https://alpinelinux.org/posts/Alpine-3.5.0-released.html