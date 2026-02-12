#!/bin/bash

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
    echo "root user"
fi

echo "installing"
dnf install nginx -y
