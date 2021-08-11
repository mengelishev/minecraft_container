# Minecraft Container
A containerized Minecraft Server project

## Setup
Obtain a copy of Minecraft server from [Mojang](https://www.minecraft.net/en-us/download/server). 
Put the downloaded server file into the project root and rename it to server.jar

## Building
To build the image, run the following in the project root:
```
docker build . --tag minecraft_srv
```

## Running
### Using Docker
First, create a volume where your Minecraft world will be kept:
```
docker volume create minecraftworld
```
To run the server using docker directly, run the following in project root:
```
docker run --rm -d --mount source=minecraftworld,target=/mserver/world -p 25565:25565 minecraft_srv
```
### Using Docker Compose
Alternatively, you can use Docker Compose:
```
docker volume create minecraftworld
docker-compose up -d
```

## Kubernetes Support
A Yaml manifest `kubectlmserver.yaml` is provided to support running in a Kubernetes cluster, such as `minikube`.
