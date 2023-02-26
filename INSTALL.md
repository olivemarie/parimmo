# Install

```sh
$ docker buildx build --platform linux/amd64 -t parimmo .
$ docker buildx build --platform linux/amd64 --progress=plain --shm-size 4g -t parimmo .
```