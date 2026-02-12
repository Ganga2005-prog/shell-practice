#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "root user"
fi

dnf install nginx -y
