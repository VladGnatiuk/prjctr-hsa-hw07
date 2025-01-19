FROM alpine:3.18

# Enable community repository and install httpie
RUN echo "http://dl-cdn.alpinelinux.org/alpine/latest-stable/community" >> /etc/apk/repositories && \
    apk update && \
    apk add --no-cache httpie curl

WORKDIR /scripts

CMD ["sh", "-c", "sleep infinity"]