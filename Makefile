DOCKER  := "/usr/bin/docker"
IMAGE   := $(cat IMAGE)

build:
	${DOCKER} build --build-arg BUILD_DATE="$(date)" --build-arg VERSION="$(cat VERSION)" --pull -t ${IMAGE}:latest .

version:
    ${DOCKER} build --build-arg BUILD_DATE="$(date)" --build-arg VERSION="$(cat VERSION)" --build-arg SONEREZH_VERSION="${VERSION}" --pull -t ${IMAGE}:${VERSION} .

clean:
	${DOCKER} rmi ${IMAGE}
	
rebuild: 
	${DOCKER} rmi ${IMAGE}
	${DOCKER} build -t ${IMAGE} .

push:
	${DOCKER} push ${IMAGE}

all:
	build