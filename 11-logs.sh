#!/bin/bash


ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0.$TIMESTAMP.log"
echo "script name: $0
 

VALIDATE(){

if [ $1 -ne 0 ]
then 
   echo "ERROR:: $2 INSTALLING MYSQL IS FAILED"
   exit 1 
else
    echo "$2 INSTALLING MYSQL IS success"
fi

}
if [ $ID -ne 0 ]
then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
    exit 1
else
    echo "your root user"
fi 


yum install mysql -y &>> $LOGFILE

VALIDATE $? "mysql installation"

yum install git -y &>> $LOGFILE

VALIDATE $? " git installation"
