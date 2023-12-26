#!/bin/bash


ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
    exit 1
else
    echo "your root user"
fi 

yum install myhrhsql -y

if [ $? -ne 0 ]
then 
   echo "ERROR:: INSTALLING MYSQL IS FAILED"
   exit 1
else
    echo "INSTALLING MYSQL IS success"
fi


