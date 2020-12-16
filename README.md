## nori-io/build

There are dockerfiles and bashfile for build "Nori" engine and plugins in docker containers
for support cross platform development and using.

## Build plugins in Docker container 

Repository contains [Dockerfile](build/0.2.0/Dockerfile) and bashfile [build.sh](build/0.2.0/scripts/build.sh) to build plugins inside Docker container.

execute command into folder (builder)(.)

1) docker build -t "noriio/builder" .  -f build/0.2.0/Dockerfile
2) docker run --rm --name "plugins_container" -v /home/anita/.config/nori/plugins:/plugin noriio/builder

## Dependencies

"Nori" engine and plugins was build by using Docker Client: Docker Engine - Community, Version:19.03.5

## Support

If you have problems with building "Nori" engine or plugins inside Docker container you 
should write to info@nori.io or create [discussion](https://github.com/nori-io/builder/issues) in this repository.



