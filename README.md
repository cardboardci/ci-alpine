# Dockerized Alpine
[![Build Status][ci-badge]][ci][![MIT License][license-badge]][license][![Alpine][alpine-badge]][alpine]

A super small Docker image based on Alpine Linux. 

## Usage

It is suggested to use this as either a template or a base image.

## Image Tags

Build tags available with the image `jrbeverly/alpine:{TAG}`.

| Tag | Description |
| --- | ----------- |
| [`latest`](/../tree/master) | An alpine image based on the latest alpine version. |
| [`3.5`](/../tree/V3.5) | An alpine image based on the alpine version 3.5. |
| [`3.4`](/../tree/V3.4) | An alpine image based on the alpine version 3.4. |
| [`3.3`](/../tree/V3.3) | An alpine image based on the alpine version 3.3. |

## Components
### Build Arguments

Build arguments used in the system.

| Variable | Default | Description |
| -------- | ------- |------------ |
| BUILD_DATE | - | The date which the image was built. |
| VERSION | - | The version of the image. |

### Environment Variables

Environment variables used in the system.

| Variable | Default | Description |
| -------- | ------- |------------ |
| HOME | / | The pathname of the user's home directory. |
| S6_OVERLAY_VERSION | v1.18.1.5 | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) for containers. |

### Volumes

Volumes exposed by the docker container.[^1]

| Volume | Description |
| ------ | ----------- |

### Ports

Ports exposed by the docker container.

| Port | Description |
| ---- | ----------- |

## Build Process

To build the docker image, use the included makefile.

```
make build
```

You can also build the image manually, but it is recommended to use the makefile.

```
docker build \
		--build-arg BUILD_DATE="$(date)" \
		--build-arg VERSION="${VERSION}" \
		--pull -t ${IMAGE}:${TAG} .
```

[ci-badge]: /../badges/master/build.svg
[ci]: /../commits/master
[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license]: /../blob/master/LICENSE
[alpine-badge]: https://img.shields.io/badge/alpine-3.5-green.svg?maxAge=2592000
[alpine]: https://alpinelinux.org/posts/Alpine-3.5.0-released.html