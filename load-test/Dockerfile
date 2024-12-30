FROM httpd:2.4

RUN apt-get update && \
    apt-get install -y siege dos2unix && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /tests
COPY load_test.sh .
COPY urls.txt .
RUN dos2unix load_test.sh && chmod +x load_test.sh

ENTRYPOINT ["./load_test.sh"]