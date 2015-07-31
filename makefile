-include vars.mk

build:
	@cp -a scripts docker
	docker build -t ${image} docker
	@rm -rf docker/scripts

squash:
	docker run --rm --privileged -it \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v /tmp:/tmp ${image} bash squash ${image} ${remote}

push: build squash
	docker push ${remote}
