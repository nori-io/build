#!/bin/bash
cd /src
go mod download
go build -buildmode=plugin -o /src/plugin.so /src/plugin/main.go


