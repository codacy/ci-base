# ci-base

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/e9197451b4054234b142634a36cd096b)](https://www.codacy.com/project/Codacy/ci-base/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=codacy/ci-base&amp;utm_campaign=Badge_Grade_Dashboard)

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