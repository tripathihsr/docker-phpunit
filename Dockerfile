FROM php

RUN mkdir -p /app/code

WORKDIR /app

RUN apt-get -y update && apt-get -y install git

RUN curl -sS https://getcomposer.org/installer | php && \
  mv composer.phar /usr/local/bin/composer && \
  composer global require phpunit/phpunit:~9

ENTRYPOINT [ "/root/.composer/vendor/phpunit/phpunit/phpunit" ]
