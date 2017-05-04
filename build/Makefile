include Makefile.app.variable
include Makefile.metadata.variable
include Makefile.image.variable

# Variables
#
# Common variables of the project.
VERSION ?= 3.5
DOCKER_IMAGE := ${REGISTRY}/${NAMESPACE}/${PROJECT}
DOCKER_TAG := $(VERSION)

# File System Variables
#
# Variables related to the file system paths.
DOCKER_DIR := ../versions
DOCKER_FILE := Dockerfile
DOCKERFILE := ${DOCKER_DIR}/${VERSION}/${DOCKER_FILE}

.PHONY: build clean prune pull push

all: build
default: build
release: build

debug:
	@echo Docker Image: $(DOCKER_IMAGE):$(DOCKER_TAG)

build:
	docker build --pull \
		 -t ${DOCKER_IMAGE}:$(DOCKER_TAG) \
		--build-arg BUILD_DATE="${BUILD_DATE}" \
		--build-arg VERSION="${CODE_VERSION}" \
		--build-arg VCS_REF="${GIT_COMMIT}" \
		--build-arg S6_OVERLAY_VERSION="${S6_OVERLAY_VERSION}" \
		--build-arg S6_OVERLAY_URL="${S6_OVERLAY_URL}" \
		-f ${DOCKERFILE} ${DOCKER_DIR}/${VERSION}/. \

clean:
	docker rmi --force ${DOCKER_IMAGE}:$(DOCKER_TAG) || exit 0

prune:
	docker images -q -f dangling=true | xargs --no-run-if-empty docker rmi

pull:
	docker pull --all-tags ${DOCKER_IMAGE}

push:
	docker push ${DOCKER_IMAGE}

release:
	docker push ${DOCKER_IMAGE}:$(DOCKER_TAG)