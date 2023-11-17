IMAGE_NAME := pragkent/alidns-webhook
IMAGE_TAG := $(shell cat VERSION)

test:
	go test -v .

docker:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

podman:
	podman build -t $(IMAGE_NAME):$(IMAGE_TAG) .

release-docker:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .
	docker push $(IMAGE_NAME):$(IMAGE_TAG)

release-podman:
	podman build -t $(IMAGE_NAME):$(IMAGE_TAG) .
	podman push $(IMAGE_NAME):$(IMAGE_TAG)