#!/bin/bash

func() {
  echo "Usage:"
  echo "build.sh [-p port] [-n img_name]"
  echo "Description:"
  echo "port, the web port to be exposed."
  echo "img_name, the name of image to be built."
  exit 1
}

while getopts 'n:p:' OPT; do
  case $OPT in
  n) img_name="$OPTARG" ;;
  p) port="$OPTARG" ;;
  ?) func ;;
  esac
done

docker build -t ${img_name:=test} --build-arg in_port=${port:=8686} -f ./Dockerfile .
