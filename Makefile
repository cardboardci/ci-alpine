IMAGE := jrbeverly/alpine
TAG := latest
VERSION := 0.1.0

build:
	docker build --build-arg BUILD_DATE="$(shell date)" --build-arg VERSION="${VERSION}" --pull -t ${IMAGE}:${TAG} .
clean:
	docker rmi --force ${IMAGE}:${TAG}
push: 
	docker push ${IMAGE}:${TAG}

rebuild: clean build
all: build