#!/bin/bash

# Test image URL
IMAGE_URL="http://example.com/test.jpg"

# Make first request
echo "First request:"
curl -I $IMAGE_URL

echo "\nSecond request:"
curl -I $IMAGE_URL

echo "\nThird request:"
curl -I $IMAGE_URL

# Test cache purge
echo "\nPurging cache:"
curl -X PURGE http://example.com/purge/test.jpg
