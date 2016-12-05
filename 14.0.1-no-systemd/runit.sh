#!/bin/bash

display_usage() { 
    echo -e "\nUsage:\n$0 SA_PASSWORD [Build? y/N] \n" 
} 

# if less than one argument supplied, display usage 
if [  $# -le 0 ] 
then 
    display_usage
    exit 1
fi 

DATADIR="/mnt/msql-data/data"
LOGDIR="/mnt/msql-data/log"
ACCEPT_EULA="YES"
SA_PASSWORD=$1
IMAGE="langdon/fedora-mssqlserver"

if [ "$2" = "y" ]
   then
       docker build -t $IMAGE .
fi

/usr/bin/docker run -d -t -p 1433:1433 -v $DATADIR:/var/opt/mssql/data:rw,z -v $LOGDIR:/var/opt/mssql/log:rw,z -e ACCEPT_EULA=$ACCEPT_EULA -e SA_PASSWORD=$SA_PASSWORD $IMAGE

