set -e
docker pull php
docker build -t local-dcycle-phpunit-image .

docker run --rm -v $(pwd)/example01:/app \
  local-dcycle-phpunit-image --group myproject
