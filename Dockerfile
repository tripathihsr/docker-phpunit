FROM composer

RUN mkdir /phpunit && cd /phpunit && \
  composer require phpunit/phpunit:^9

WORKDIR /app

ENTRYPOINT [ "/phpunit/vendor/phpunit/phpunit/phpunit" ]
