# Dockerized Alpine
[![MIT License][license-badge]][license][![Alpine][alpine-badge]][alpine]

A super small Docker image based on Alpine Linux. 

## Usage

It is suggested to use this as either a template or a base image.

## Image Tags

Build tags available with the image `jrbeverly/alpine:{TAG}`.

<table>
  <tr>
    <th width="7%">Tag</th>
    <th width="10%">Status</th> 
    <th>Description</th>
  </tr>
  <tr>
    <td><a href="/../tree/master">master</a></td>
    <td><a href="/../commits/master"><img alt="Build Status" src="/../badges/master/build.svg"/></a></td>
    <td>An alpine image based on the latest alpine version.</td>
  </tr>
  <tr>
    <td><a href="/../tree/V3.5">V3.5</a></td>
    <td><a href="/../commits/V3.5"><img alt="Build Status" src="/../badges/V3.5/build.svg"/></a></td>
    <td>An alpine image based on the alpine version 3.5.</td>
  </tr>
  <tr>
    <td><a href="/../tree/V3.4">V3.4</a></td>
    <td><a href="/../commits/V3.4"><img alt="Build Status" src="/../badges/V3.4/build.svg"/></a></td>
    <td>An alpine image based on the alpine version 3.4.</td> 
  </tr>
  <tr>
    <td><a href="/../tree/V3.3">V3.3</a></td>
    <td><a href="/../commits/V3.3"><img alt="Build Status" src="/../badges/V3.3/build.svg"/></a></td>
    <td>An alpine image based on the alpine version 3.3.</td> 
  </tr>
</table>

## Components
### Build Arguments

Build arguments used in the system.

| Variable | Default | Description |
| -------- | ------- |------------ |
| BUILD_DATE | - | The date which the image was built. |
| VERSION | - | The version of the image. |
| S6\_OVERLAY\_VERSION | see [`Makefile.image.variable`](Makefile.image.variable) | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) for containers. |
| S6\_OVERLAY\_URL | see [`Makefile.image.variable`](Makefile.image.variable) | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) URL download for containers. |

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

You can also build the image manually, but it is recommended to use the makefile.

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
[alpine-badge]: https://img.shields.io/badge/alpine-3.5-green.svg?maxAge=2592000
[alpine]: https://alpinelinux.org/posts/Alpine-3.5.0-released.html