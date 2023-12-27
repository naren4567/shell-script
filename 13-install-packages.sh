#!/bin/bash


ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
    echo "ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
    exit 1
else
    echo "your root user"
fi 

echo " all arguments passes: $@"
