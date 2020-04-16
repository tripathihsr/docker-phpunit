[![CircleCI](https://circleci.com/gh/dcycle/docker-phpunit.svg?style=svg)](https://circleci.com/gh/dcycle/docker-phpunit)

Unit-test PHP code with [PHPUnit](https://phpunit.de).

For example:

    docker run --rm -v $(pwd)/example01:/app \
      dcycle/phpunit:1 --group myproject

See [this project on the Docker Hub](https://hub.docker.com/r/dcycle/phpunit/).
