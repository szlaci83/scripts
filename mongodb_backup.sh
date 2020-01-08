#!/bin/bash

mongodump --out /home/laci/backup/mongo
tar -zcvf /home/laci/backup/mongodb.tar.gz /home/laci/backup/mongo/
rm -rf /home/laci/backup/mongo/
#HOST=triton
#USER=laci

#ftp -inv $HOST << EOF
#user $USER $PASS
#cd /Backups/MongoDB
#binary
#mput mongodb.tar.gz
#bye
#EOF 
