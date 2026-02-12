#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "run as root user"
fi

echo "installing"
dnf install nginx -y
