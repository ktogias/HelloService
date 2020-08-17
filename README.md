# HelloService

Provides a json api to get the "hello" string

## How to build production image:

 podman build -t hello-prod -f Dockerfile.prod 

## How to run production image:

podman run --publish 8080:80 hello-prod

## View production in browser:

http://localhost:8080