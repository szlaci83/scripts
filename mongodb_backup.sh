#!/bin/bash
d=$(date +'%Y-%m-%d')
echo $d
mongodump --out /home/laci/backup/mongo
tar -zcvf /home/laci/backup/mongodb/$d.tar.gz /home/laci/backup/mongo/
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
