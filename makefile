APP=mumuki-mocha-worker-node12
VERSION=1.0
IMAGE = $(APP):$(VERSION)

deploy: build-image upload-acr

build-image:
	docker build -t $(IMAGE) .

upload-acr:
	docker tag $(IMAGE) productecadev/$(IMAGE)
	docker push productecadev/$(IMAGE)
