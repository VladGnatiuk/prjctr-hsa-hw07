#!/bin/bash
set -e

siege -c1 -t10S -f /tests/urls.txt
