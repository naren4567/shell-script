#!/bin/bash


ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
TIMESTAMP=$(date +%F-%H-%M-%S)

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "scripted started executing at $TIMESTAMP" &>> $LOGFILE
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R  failed $N"
    else 
        echo -e "$2 ... $G sucess $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR:: PLEASE RUN THIS SCRIPT WITH ROOT ACCESS"
    exit 1
else
    echo "your root user"
fi 

#echo " all arguments passes: $@"

for packages in $@
do 
   yum list installed $package &>> $LOGFILE
   if [ $? -ne 0 ]
    then
       yum install $package -y &>> $LOGFILE
        VALIDATE $? "installation of $package"
    else
      echo -e "package is already installed ..$Y skipping $N"
fi

done