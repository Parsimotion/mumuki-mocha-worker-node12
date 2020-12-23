APP=mumuki-mocha-worker-node12
REGISTRY_PREFIX = docker
LAST_COMMIT=1.0
IMAGE = $(APP):$(LAST_COMMIT)

deploy: build-image upload-acr

build-image:
	docker build -t $(IMAGE) .

upload-acr:
	docker tag $(IMAGE) productecaregistry.azurecr.io/$(REGISTRY_PREFIX)/$(IMAGE)
	docker push productecaregistry.azurecr.io/$(REGISTRY_PREFIX)/$(IMAGE)
