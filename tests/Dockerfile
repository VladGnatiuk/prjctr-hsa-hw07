FROM alpine:latest

# Install curl
RUN apk add --no-cache curl

WORKDIR /scripts

ENTRYPOINT ["sh", "/scripts/load_test.sh"]