#!/bin/bash
cd /plugins

if [[ "$build_mode" == "single" ]]; then
echo "SINGLE"
go mod download
go build -buildmode=plugin -o /plugins/plugin.so /plugins/plugin.go
fi


if [[ "$build_mode" == "bulk" ]]; then
echo "BULK"
ls
for directory in `find /plugins -mindepth 1 -maxdepth 1  -type d `
do
cd $directory
echo $directory found
go mod download
go build -buildmode=plugin -o $directory.so plugin.go
cd ..
done
fi