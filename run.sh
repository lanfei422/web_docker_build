#!/bin/bash

func() {
  echo "Usage:"
  echo "run.sh [-p port] [-d docker_name]"
  echo "Description:"
  echo "port, the web port to be exposed."
  exit 1
}

while getopts 'p:d:' OPT; do
  case $OPT in
  p) port="$OPTARG" ;;
  d) docker_name="$OPTARG" ;;
  ?) func ;;
  esac
done

docker run -d -p $port:$port $docker_name
