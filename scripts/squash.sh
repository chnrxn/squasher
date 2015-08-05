: ${image:=squasher}

: ${src:="$1"}
: ${dst:="$2"}

# -from root
docker save ${src} | 
	docker-squash -verbose -t ${dst} | 
	docker load

if grep -sq -- " --publish " <<<" $@ "; then
	docker push "${dst}"
fi
