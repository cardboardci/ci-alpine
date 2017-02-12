# Dockerized Alpine
[![MIT License][license-badge]][license][![S6 Overlay][s6-overlay-badge]][s6-overlay]

A super small Docker image based on Alpine Linux. 

## Usage

It is suggested to use this as either a template or a base image.

## Image Tags

Build tags available with the image `jrbeverly/alpine:{TAG}`.

| Tag | Status | Description |
| --- | ------ | ----------- |
| [master](/../tree/master) | [![build status](/../badges/master/build.svg)](/../commits/master) | An alpine image based on the latest alpine version. |
| [V3.5](/../tree/V3.5) | [![build status](/../badges/V3.5/build.svg)](/../commits/V3.5) | An alpine image based on the alpine version 3.5. |
| [V3.4](/../tree/V3.4) | [![build status](/../badges/V3.4/build.svg)](/../commits/V3.4) | An alpine image based on the alpine version 3.4. |
| [V3.3](/../tree/V3.3) | [![build status](/../badges/V3.3/build.svg)](/../commits/V3.3) | An alpine image based on the alpine version 3.3. |

## Components
### Build Arguments

Build arguments used in the system.

| Variable | Default | Description |
| -------- | ------- | ----------- |
| BUILD_DATE | - | The date which the image was built. |
| VERSION | - | The version of the image. |
| S6\_OVERLAY\_VERSION | see [Makefile.image.variable](Makefile.image.variable) | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) for containers. |
| S6\_OVERLAY\_URL | see [Makefile.image.variable](Makefile.image.variable) | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) URL download for containers. |

### Environment Variables

Environment variables used in the system.

| Variable | Default | Description |
| -------- | ------- |------------ |
| HOME | / | The pathname of the user's home directory. |

## Build Process

To build the docker image, use the included makefile.

```
make build
```

You can also build the image manually, but it is recommended to use the makefile to ensure all build arguments are provided.

```
docker build \
    --build-arg BUILD_DATE="${DATE}" \
    --build-arg VERSION="${VERSION}" \
    --build-arg S6_OVERLAY_VERSION="${S6_OVERLAY_VERSION}" \
    --build-arg S6_OVERLAY_URL="${S6_OVERLAY_URL}" \
    --pull -t ${IMAGE}:${TAG} .
```

[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license]: /../blob/master/LICENSE
[s6-overlay-badge]: https://img.shields.io/badge/s6-1.19.1.1-green.svg?maxAge=2592000
[s6-overlay]: https://github.com/just-containers/s6-overlay