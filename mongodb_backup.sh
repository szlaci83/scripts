#!/bin/bash

# ad-hoc run should be done with a param, otherwise date is he suffix
if [ $# -eq 0 ]
then
  d=$(date +'%Y-%m-%d')
else
  d=$1
fi

dump() {
 mongodump --out /home/laci/backup/mongo;
}

zipit(){
 tar -zcvf /home/laci/backup/mongodb/$d.tar.gz /home/laci/backup/mongo/
}

cleanup(){
 rm -rf /home/laci/backup/mongo/
}

copy_to_ftp(){
 HOST=triton
 USER=laci
 # ftp -inv $HOST << EOF
 #user $USER $PASS
 #cd /Backups/MongoDB
 #binary
 #mput mongodb.tar.gz
 #bye
 #EOF
}

dump
zipit
cleanup