# Docker-intro

### Development before contains:
Each developer needs to install and configure all services directly on their OS

- Installation process different for each OS

- If you have 10 apps, each dev need to install each of them

In docker, there is your own isolated env where it contains all dependencies.


### Docker Images vs Docker Containers

A docker image is an exec app artifact where it incldues app source code in a complete env config.

While Docker container is a RUNNING IMAGE, and you can have multiple containers.

### Registry vs Repository:

Registry is a service providing storage (collection of repos)

Repo is a collection of related images with same name but different versions

EX: Docker hub is a registry, on it you can host private or public repo for your app.

### Create own images:

Docker file → BUILD → Image → Run → Container

A docker file is a text document that contains commands to assemble an image

Docker can then build an image by reading those instructions

List all Docker images
```
docker images
```

List **running** containers
``` docker ps ```

Get an image for Docker Hub
``` docker pull <name_of_image>:<version> ```

Run a docker image → it becomes a container
```
docker run <name>:<TAG> //TAG refer to version
```
```
//Example
docker run nginx:1.23
```

Runs a docker image on background and prints its ID 
``` docker run -d nginx:1.23 ```

Print container logs
``` docker logs {id} ```

**Note:** Instead of pulling (getting) the docker image locally and then run it, you can directly run it so docker will automatically download it first and then run it.

Stop a container
``` docker stop {id} ```

Run a container of the specified host port
```
docker run -d -p {HOST_PORT}:{CONTAINER_PORT} nginx:1.23
docker run -d -p 9000:80 nginx:1.23
```
**Note:** Its standard to use the same port on your host as container is using

List all container even non running
```
docker ps -a
```

Give the container a name
```
docker run --name {} ...
```






