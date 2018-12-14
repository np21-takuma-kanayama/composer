FROM alpine

RUN apk add --no-cache \
    composer \
    php7-curl \
    php7-dom \
    php7-fileinfo \
    php7-zip \
    php7-mbstring \
    php7-pdo \
    php7-tokenizer \
    php7-xml \
    php7-xmlwriter
RUN composer config -g repos.packagist composer https://packagist.jp
RUN composer global require hirak/prestissimo
RUN composer global require laravel/installer

WORKDIR /app
ENTRYPOINT ["ash","-c","laravel"]
CMD ["help"]
