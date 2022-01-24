#!/bin/bash

func() {
  echo "Usage:"
  echo "build.sh [-p port] [-n docker_name] [-v version]"
  echo "Description:"
  echo "port, the web port to be exposed."
  echo "docker_name, the name of docker to be built."
  echo "version, the docker version"
  exit 1
}

while getopts 'n:p:v:' OPT; do
  case $OPT in
  n) docker_name="$OPTARG" ;;
  p) port="$OPTARG" ;;
  v) version="$OPTARG" ;;
  ?) func ;;
  esac
done

docker build -t ${docker_name:=test}:${version:=1.0} --build-arg in_port=${port} -f ./Dockerfile .
