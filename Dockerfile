FROM alpine

RUN apk add --no-cache \
    composer \
    php7-curl \
    php7-dom \
    php7-mbstring \
    php7-pdo \
    php7-tokenizer \
    php7-xml \
    php7-xmlwriter
RUN composer global require hirak/prestissimo

WORKDIR /app
ENTRYPOINT ["composer"]
CMD ["help"]