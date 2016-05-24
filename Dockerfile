FROM php:7

COPY . /src/
WORKDIR /src/

RUN apt-get update && apt-get install -y git
RUN curl -sS --fail https://getcomposer.org/installer | php
RUN php composer.phar install

ENTRYPOINT php TcpClient.php
