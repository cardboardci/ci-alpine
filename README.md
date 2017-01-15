# Dockerized Template
The description of the application that is being dockerized goes here.

## Usage

It is suggested to use [docker-compose](https://docs.docker.com/compose/) to setup the environment.
You can see a simple `docker-compose.yml` file below:

```yaml
sample:
  container_name: sample
  image: jrbeverly/sample
  hostname: sample  
  ports:
    - "80:80"
  volumes:
    - /etc/localtime:/etc/localtime:ro
  labels:
    - "ca.jrbeverly.env=simple"
```

You can then use `docker-compose` to start the environment:

```console
docker-compose up -d
```

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

| Variable | Description |
| ----------| --------------- |

## Environment Variables

Environment variables used in the system.

| Variable | Description |
| ----------| --------------- |

### User and Group Mapping

All processes within the docker container will be run as the **docker user**, a non-root user.  The **docker user** is created on build with the user id `DUID` and a member of a group with group id `DGID`.  

Any permissions on the host operating system (OS) associated with either the user (`DUID`) or group (`DGID`) will be associated with the docker container.  

The default `DUID` is `6500` and `DGID` is `6510`.

The notation of the build variables is short form for docker user id (`DUID`) and docker group id (`DGID`). 

[^1]: It is necessary to ensure that the **docker user** (`DUID`) has permission to access volumes. (see [User / Group Identifiers](#User-and-Group-Mapping)