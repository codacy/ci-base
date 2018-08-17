# ci-base

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/e9197451b4054234b142634a36cd096b)](https://www.codacy.com/project/Codacy/ci-base/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=codacy/ci-base&amp;utm_campaign=Badge_Grade_Dashboard)
[![](https://images.microbadger.com/badges/version/codacy/ci-base:0.1.0-init.1.svg)](https://microbadger.com/images/codacy/ci-base:0.1.0-init.1 "Get your own version badge on microbadger.com")

Base docker image used by Codacy in Continuous Integration environments such as CircleCI.

## Usage

#### CircleCI

Use this image directly on CircleCI for simple steps

```
version: 2
jobs:
  build:
    working_directory: /app
    docker:
      - image: codacy:ci-base:1.0.0
    steps:
      - checkout
```

#### Base for other Dockerfiles

Use this image as the base for other Docker images.
Checkout the [codacy/ci-aws](https://github.com/codacy/ci-aws) as example.

# Build and Publish

The pipeline in `circleci` can deploy this for you when the code is pushed to the remote.

You can also run everything locally using the makefile
```
$ make help
---------------------------------------------------------------------------------------------------------
build and deploy help
---------------------------------------------------------------------------------------------------------
build                          build docker image
get-next-version-number        get next version number
git-tag                        tag the current commit with the next version and push
push-docker-image              push the docker image to the registry (DOCKER_USER and DOCKER_PASS mandatory)
push-latest-docker-image       push the docker image with the "latest" tag to the registry (DOCKER_USER and DOCKER_PASS mandatory)
```