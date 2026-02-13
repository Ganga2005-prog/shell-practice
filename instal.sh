#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"


if [ $USERID -ne 0 ]; then
    echo "run with root user access"
    exit 1
fi 

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2... failure"
        exit 1
    else
        echo "$2...success"    
    fi
}


dnf install nginx -y &>> $LOGS_FILE
VALIDATE $? "nginx installation"

dnf install mysql -y &>> $LOGS_FILE
VALIDATE $? "mysql installation"


dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "nodejs installation"


