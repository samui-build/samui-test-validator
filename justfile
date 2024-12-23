CONTAINER_NAME := "samui-test-validator"
CONTAINER_PARAMS := "-it -p 8899:8899 -p 8900:8900 --rm"
DOCKER_USER := "ghcr.io/samui-build"
DOCKER_REPO := "samui-test-validator"
DOCKER_TAG := "latest"

# [misc]

_default: _fmt

@_fmt:
    just --fmt --unstable
    just --list

alias b := build

# [docker]

build:
    docker build -t {{ DOCKER_USER }}/{{ DOCKER_REPO }}:{{ DOCKER_TAG }} .

run:
    docker run {{ CONTAINER_PARAMS }} --name {{ CONTAINER_NAME }} {{ DOCKER_USER }}/{{ DOCKER_REPO }}:{{ DOCKER_TAG }}

run-sh:
    docker run {{ CONTAINER_PARAMS }} --name {{ CONTAINER_NAME }} --entrypoint bash {{ DOCKER_USER }}/{{ DOCKER_REPO }}:{{ DOCKER_TAG }}
