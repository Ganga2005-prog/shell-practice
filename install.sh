#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "run as root user"
    exit 1
fi

echo "installing"
dnf install nginx -y
