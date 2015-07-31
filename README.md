Usage:

```
src=src/image \
dst=dst/image \
docker run --rm --privileged -it \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /tmp:/tmp chnrxn/squasher bash squash ${src} ${dst} --publish
```

will squash the layers of src/image into a new image and publish it to dst/image.

Omit the --publish to keep the squashed image locally; it can be published later via 
`docker push dst/image`

Source: [chnrxn/squasher](https://github.com/chnrxn/squasher)

Credits:

* [jwilder/docker-squash](https://github.com/jwilder/docker-squash)