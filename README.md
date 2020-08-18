# HelloService

Provides a json api to get the "hello" string

## How to build dev image:

 podman build -t hello-dev -f Dockerfile.dev

## How to run dev

podman run --publish 8080:80 --volume ./php:/php:Z hello-dev

## View live dev in browser:

http://localhost:8080

## How to build test image:

 podman build -t hello-test -f Dockerfile.test

## How to run tests

podman run --publish 8080:80 hello-test ./vendor/bin/codecept run

## How to build production image:

 podman build -t hello-prod -f Dockerfile.prod 

## How to run production image:

podman run --publish 8080:80 hello-prod

## View production in browser:

http://localhost:8080

