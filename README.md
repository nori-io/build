## nori-io/build

There are dockerfiles and bashfile for build "Nori" engine and plugins in docker containers
for support cross platform development and using.

## Build plugins in Docker container 

Folder [builder](.) contains [Dockerfile](build/0.2.0/Dockerfile) and bashfile [build.sh](build/0.2.0/scripts/build.sh) to build plugins inside Docker container.

execute command into folder [nori-io/build/plugins/]

1) docker build -t "plugins" .  -f Dockerfile
2) docker run --rm --name "plugins_container" -e build_mode="bulk" -v /home/anita/.config/nori/plugins:/plugins plugins

build_mode can be used:
 "single" - build only one plugin, located in directory with plugins
 "bulk" -  build some plugins, located in subdirectories in directory with plugins

## Dependencies

"Nori" engine and plugins was build by using Docker Client: Docker Engine - Community, Version:19.03.5

## Support

If you have problems with building "Nori" engine or plugins inside Docker container you 
should write to info@nori.io or create [discussion] in this repository.



