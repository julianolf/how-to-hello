#!/bin/sh

set -e

echo "Saying Hello in C"
cd c/ && make run && cd - >/dev/null
