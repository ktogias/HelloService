# HelloService

Provides a json api to get the "hello" string

## How to build dev image:

    docker build -t hello-dev --target dev .

## How to run dev image

    docker run -d --publish 8080:80 --volume ./php:/php:Z --name hello-dev --rm hello-dev

## Run tests from dev

    docker exec hello-dev ./vendor/bin/codecept run

## Run shell in dev

    docker exec -it hello-dev bash

## View live dev in browser:

http://localhost:8080

## How to build test image:

    docker build -t hello-test --target test .

## How to run unit tests

    docker run hello-test ./vendor/bin/codecept run unit

## How to run acceptance tests

    docker run --name hello-test --rm hello-test
    docker exec hello-test ./vendor/bin/codecept run acceptance

## How to run test image for manual testing

    docker run --publish 8080:80 --name hello-test --rm hello-test

## How to build production image:

    docker build -t hello-prod --target prod .

## How to run production image:

    docker run --publish 8080:80 --name hello-prod --rm hello-prod

## View production in browser:

http://localhost:8080

