## nori-io/build

There are dockerfiles and bashfile for build "Nori" engine and plugins in docker containers
for support cross platform development and using.

## Build docker image

```bash
docker build -t noriio/builder:dev .  -f build/Dockerfile
```

## Build plugins in docker container 

Repository contains [Dockerfile](build/Dockerfile) and bashfile [build.sh](build/scripts/build.sh) to build plugin inside Docker container.

Run command in plugin root directory:

```bash
docker run --rm -v /home/nori/plugins:/src noriio/builder:dev
```

## Support

If you have problems with building "Nori" engine or plugins inside Docker container you 
should write to info@nori.io or create [discussion](https://github.com/nori-io/builder/issues) in this repository.



