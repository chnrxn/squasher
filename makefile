-include vars.mk

build:
	@cp -a scripts docker
	docker build -t ${image} docker
	@rm -rf docker/scripts

squash:
	docker run --rm --privileged -it \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v /tmp:/tmp ${image} bash squash ${image} ${remote}

publish:
	docker push ${remote}

start:
	docker run -itd --name=${image} \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v /tmp:/tmp -v ${HOME}:${HOME} \
		${remote}

stop:
	-docker rm -f ${image}

restart: stop start

shell: 
	docker top ${image} >/dev/null 2>&1 || ${MAKE} start
	docker exec -it ${image} bash

commit:
	docker commit ${image} ${image}

list:
	docker exec ${image} ls -l /usr/local/bin

install:
	docker exec ${image} install --mode 755 `pwd`/scripts/squash.sh /usr/local/bin/squash
	${MAKE} list