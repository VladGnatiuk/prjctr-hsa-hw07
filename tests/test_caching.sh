#!/bin/bash

# Test image URL (using localhost since we're using host network)
IMAGE_URL="http://localhost/images/img1.jpg"
PURGE_URL="http://localhost/purge/images/img1.jpg"

# Make first request
echo "First request (should be MISS):"
curl -I "$IMAGE_URL"

echo -e "\nSecond request (should be MISS):"
curl -I "$IMAGE_URL"

echo -e "\nThird request (should be HIT):"
curl -I "$IMAGE_URL"

# Test cache purge
echo -e "\nPurging cache:"
curl -X PURGE "${PURGE_URL//[[:space:]]/}"

echo -e "\nFourth request (should be MISS after purge):"
curl -I "$IMAGE_URL"
