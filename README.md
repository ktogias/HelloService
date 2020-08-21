# HelloService

Provides a json api to get the "hello" string

## How to build dev image:

    podman build -t hello-dev --target dev .

## How to run dev image

    podman run -d --publish 8080:80 --volume ./php:/php:Z --name hello-dev --rm hello-dev

## Run tests from dev

    podman exec hello-dev ./vendor/bin/codecept run

## Run shell in dev

    podman exec -it hello-dev bash

## View live dev in browser:

http://localhost:8080

## How to build test image:

    podman build -t hello-test --target test .

## How to run unit tests

    podman run hello-test ./vendor/bin/codecept run unit

## How to run acceptance tests

    podman run --name hello-test --rm hello-test
    podman exec hello-test ./vendor/bin/codecept run acceptance

## How to run test image for manual testing

    podman run --publish 8080:80 --name hello-test --rm hello-test

## How to build production image:

    podman build -t hello-prod --target prod .

## How to run production image:

    podman run --publish 8080:80 --name hello-prod --rm hello-prod

## View production in browser:

http://localhost:8080

