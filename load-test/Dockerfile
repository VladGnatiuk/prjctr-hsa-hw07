FROM httpd:2.4

RUN apt-get update && \
    apt-get install -y apache2-utils dos2unix && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tests
COPY load_test.sh .
RUN dos2unix load_test.sh && chmod +x load_test.sh

ENTRYPOINT ["./load_test.sh"]