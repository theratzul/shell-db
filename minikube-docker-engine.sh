#!/bin/bash
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64

chmod +x minikube-linux-amd64
./docker info --format '{{.OSType}}'
./minikube version
./minikube start --driver=docker

./minikube config set driver docker
