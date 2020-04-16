FROM php

RUN mkdir -p /app/code && \
  apt-get -y update && apt-get -y --no-install-recommends install git && \
  rm -rf /var/lib/apt/lists/* && \
  curl -sS https://getcomposer.org/installer | php && \
  mv composer.phar /usr/local/bin/composer && \
  composer global require phpunit/phpunit:~9

WORKDIR /app

ENTRYPOINT [ "/root/.composer/vendor/phpunit/phpunit/phpunit" ]
