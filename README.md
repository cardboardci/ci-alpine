# Dockerized Alpine
[![MIT License][license-badge]][license]

## Summary

A super small Docker image based on Alpine Linux. 

## Usage

It is suggested to use this as either a template or a base image.

## Image Tags

Build tags available with the image `jrbeverly/alpine:{TAG}`.

| Tag | Information | Description |
| --- | ------ | ----------- |
| [![](https://images.microbadger.com/badges/version/jrbeverly/alpine.svg)](https://microbadger.com/images/jrbeverly/alpine "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/jrbeverly/alpine.svg)](https://microbadger.com/images/jrbeverly/alpine "Get your own image badge on microbadger.com") | An alpine image based on the latest alpine version. |
| [![](https://images.microbadger.com/badges/version/jrbeverly/alpine:3.5.svg)](https://microbadger.com/images/jrbeverly/alpine:3.5 "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/jrbeverly/alpine:3.5.svg)](https://microbadger.com/images/jrbeverly/alpine:3.5 "Get your own image badge on microbadger.com") | An alpine image based on the alpine version 3.5. |
| [![](https://images.microbadger.com/badges/version/jrbeverly/alpine:3.4.svg)](https://microbadger.com/images/jrbeverly/alpine:3.4 "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/jrbeverly/alpine:3.4.svg)](https://microbadger.com/images/jrbeverly/alpine:3.4 "Get your own image badge on microbadger.com") | An alpine image based on the alpine version 3.4. |
| [![](https://images.microbadger.com/badges/version/jrbeverly/alpine:3.3.svg)](https://microbadger.com/images/jrbeverly/alpine:3.3 "Get your own version badge on microbadger.com") | [![](https://images.microbadger.com/badges/image/jrbeverly/alpine:3.3.svg)](https://microbadger.com/images/jrbeverly/alpine:3.3 "Get your own image badge on microbadger.com") | An alpine image based on the alpine version 3.3. |

## Components
### Build Arguments

Build arguments used in the system.

| Variable | Default | Description |
| -------- | ------- | ----------- |
| VERSION | [variable.image](build/variable.image) | The version of the image. |
| S6\_OVERLAY\_VERSION | [variable.app](build/variable.image) | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) for containers. |
| S6\_OVERLAY\_URL | [variable.app](build/variable.image) | The [S6 Overlay](https://github.com/just-containers/s6-overlay/releases) URL download for containers. |

### Environment Variables

Environment variables used in the system.

| Variable | Default | Description |
| -------- | ------- |------------ |
| HOME | / | The pathname of the user's home directory. |

## Build Process

To build the docker image, use the included `docker-make` script.  

```
./docker-make build
```

You can get a list of commands available from `docker-make` by using the `help` option.

```
./docker-make help
```

You can also build the image manually, but it is recommended to use the `docker-make` to ensure all build arguments are provided.

[license-badge]: https://img.shields.io/badge/license-MIT-blue.svg?maxAge=2592000
[license]: /../blob/master/LICENSE