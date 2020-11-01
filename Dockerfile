FROM composer

RUN mkdir /phpunit && cd /phpunit && \
  export COMPOSER_MEMORY_LIMIT=-1 && \
  composer require phpunit/phpunit

WORKDIR /app

ENTRYPOINT [ "/phpunit/vendor/phpunit/phpunit/phpunit" ]
