#!/bin/bash
cd /plugin

go mod download
go build -buildmode=plugin -o plugin.so plugin/main.go


