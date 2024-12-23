# Samui Test Validator on Docker

This repository contains a Docker image for the Samui Test Validator.

It's based on the [Solana Test Validator](https://github.com/beeman/solana-test-validator).

## Usage

To run the Samui Test Validator, you can use the following command:

```shell
docker run -it -p 8899:8899 -p 8900:8900 --rm --name samui-test-validator ghcr.io/samui-build/samui-test-validator:latest
```

This will start the Samui Test Validator on port 8899 and 8900.

information.

## Building the Docker image

To build the Docker image, you can use the following command using [just](https://github.com/casey/just):

```shell
just build
```

This will build the Docker image and tag it as `ghcr.io/samui-build/samui-test-validator`.

## Running the Docker image

To run the Docker image, you can use the following command:

```shell
just run
```

This will start the Samui Test Validator on port 8899 and 8900.

## Running a shell in the Docker image

To run a shell in the Docker image, you can use the following command:

```shell
just run-sh
```

This will start a shell in the Docker image.

