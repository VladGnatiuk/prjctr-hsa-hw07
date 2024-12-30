#!/bin/bash
set -e

for c in 10 25 50 100
do
    siege -c$c -t10S -v -H "Content-Type: application/json" -f /tests/urls.txt
done
