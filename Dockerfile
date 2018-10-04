FROM alpine

RUN apk add --no-cache \
    composer \
    php7-curl \
    php7-mbstring
RUN composer global require hirak/prestissimo

WORKDIR /app
ENTRYPOINT ["composer"]
CMD ["help"]