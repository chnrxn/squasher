    docker run --rm --privileged -it \
        -v /var/run/docker.sock:/var/run/docker.sock \
        -v /tmp:/tmp squasher bash squash squasher chnrxn/squasher
    Loading export from STDIN using /tmp/docker-squash421509993 for tempdir
    Loaded image w/ 11 layers
      *  squasher (1 tags)
    Extracting layers...
      *  /tmp/docker-squash421509993/4bfca2cddf946049ffe65556cbc5b002f6c029c8f2109562b1c449fc9845f429/layer.tar
      *  /tmp/docker-squash421509993/cfc75fa9f295d84c856f6e6205389282643c67842fdcc62abc24f55acdc01b64/layer.tar
      *  /tmp/docker-squash421509993/e97686c2eda7224db2bb09ed9fe3196666482e7b04559af8aae33f3fde528320/layer.tar
      *  /tmp/docker-squash421509993/ebc44aff174e89d74729569064fd7e7e7ebdf4d1d7b750384b17119f345003fd/layer.tar
      *  /tmp/docker-squash421509993/ebf7021e41a4b6f79ced0377719ad0eb0166379660110c8827d64b55fff9a012/layer.tar
      *  /tmp/docker-squash421509993/15f8dfe12f5d22ccaee3475f0b585bb8581288c17c9ed244caffc530e755a57f/layer.tar
      *  /tmp/docker-squash421509993/3bfa38c73224f520a1b019b61381e2f96b2c5af7a28c1fe2a4659d3e3d99ecb4/layer.tar
      *  /tmp/docker-squash421509993/79a619b3b52054ee72083c0742e51ec048289a58de54c5771d2e099af1f8bbac/layer.tar
      *  /tmp/docker-squash421509993/8c3e49cb06dc5b36240627eca5238665ce373d96f41e28947920828dfe434381/layer.tar
      *  /tmp/docker-squash421509993/c96aadb57deb25ded19051bd5980e2ffa39f55ccbecf2db045e90c96452cb88f/layer.tar
      *  /tmp/docker-squash421509993/3259fc930ea4d8d52e73ead1fa16ac0dd457335f097f640bd00b969487b1c474/layer.tar
    Inserted new layer bcca0a0a5e8c after c96aadb57deb
      *  8c3e49cb06dc /bin/sh -c #(nop) MAINTAINER Oracle Linux Product Team <ol-o
      *  c96aadb57deb /bin/sh -c #(nop) ADD file:4e581b757e8607fa81c70513b112598cb
      -> bcca0a0a5e8c /bin/sh -c #(squash) from c96aadb57deb
      *  cfc75fa9f295 /bin/sh -c #(nop) CMD ["/bin/bash"]
      *  3bfa38c73224 /bin/sh -c rpm -Uvh https://dl.fedoraproject.org/pub/epel/ep
      *  15f8dfe12f5d /bin/sh -c yum -y install tar docker-io sudo
      *  3259fc930ea4 /bin/sh -c curl -sL https://github.com/jwilder/docker-squash
      *  e97686c2eda7 /bin/sh -c yum clean all
      *  ebf7021e41a4 /bin/sh -c #(nop) ADD file:9e6b43adaebc142a077f9085258f197d6
      *  79a619b3b520 /bin/sh -c #(nop) ADD file:e5cfc7a2759ce7c79a9e26e90787a3547
      *  4bfca2cddf94 /bin/sh -c chmod -R +x /usr/local/bin
      *  ebc44aff174e /bin/sh -c #(nop) CMD ["/bin/sh" "-c" "cat /usr/local/bin/in
    Squashing from bcca0a0a5e8c into bcca0a0a5e8c
      *  Deleting whiteouts
      *  Rewriting child history
      *  Replacing cfc75fa9f295 w/ new layer 3a67e68de316 (/bin/sh -c #(nop) CMD ["/bin/bash"])
      *  Removing 3bfa38c73224. Squashed. (/bin/sh -c rpm -Uvh https://dl.fedoraproject.or...)
      *  Removing 15f8dfe12f5d. Squashed. (/bin/sh -c yum -y install tar docker-io sudo)
      *  Removing 3259fc930ea4. Squashed. (/bin/sh -c curl -sL https://github.com/jwilder/...)
      *  Removing e97686c2eda7. Squashed. (/bin/sh -c yum clean all)
      *  Removing ebf7021e41a4. Squashed. (/bin/sh -c #(nop) ADD file:9e6b43adaebc142a077f...)
      *  Removing 79a619b3b520. Squashed. (/bin/sh -c #(nop) ADD file:e5cfc7a2759ce7c79a9e...)
      *  Removing 4bfca2cddf94. Squashed. (/bin/sh -c chmod -R +x /usr/local/bin)
      *  Replacing ebc44aff174e w/ new layer af48b0ef0935 (/bin/sh -c #(nop) CMD ["/bin/sh" "-c" "cat /usr...)
    Tarring up squashed layer bcca0a0a5e8c
    Removing extracted layers
    Tagging af48b0ef0935 as chnrxn/squasher:latest
    Tarring new image to STDOUT
    Done. New image created.
      *  8c3e49cb06dc 3 months /bin/sh -c #(nop) MAINTAINER Oracle Linux Product Team <o... 1.024 kB
      *  c96aadb57deb 15 hours /bin/sh -c #(nop) ADD file:4e581b757e8607fa81c70513b11259... 163.4 MB
      *  bcca0a0a5e8c 10 seconds /bin/sh -c #(squash) from c96aadb57deb 172.2 MB
      *  3a67e68de316 8 seconds /bin/sh -c #(nop) CMD ["/bin/bash"] 1.024 kB
      *  af48b0ef0935 7 seconds /bin/sh -c #(nop) CMD ["/bin/sh" "-c" "cat /usr/local/bin... 1.024 kB
    Removing tempdir /tmp/docker-squash421509993
    The image chnrxn/squasher:latest already exists, renaming the old one with ID ae1d138e6ec3 to empty string
