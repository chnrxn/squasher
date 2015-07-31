docker run --rm --privileged -it \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v /tmp:/tmp chnrxn/squasher bash squash $1 $2
