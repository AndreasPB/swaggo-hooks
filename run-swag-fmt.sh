#!/usr/bin/env bash

go install github.com/swaggo/swag/cmd/swag@latest

if ! which swag &> /dev/null
then
    echo "yolo"
    echo "swag could not be found. Please ensure it is installed and available on your PATH."
    # exit 1
fi

swag fmt "$@"
