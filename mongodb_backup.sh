#!/bin/bash
d=$1

dump() {
 mongodump --out /home/laci/backup/mongo;
}

zipit(){
 tar -zcvf /home/laci/backup/mongodb/mongo-$d.tar.gz /home/laci/backup/mongo/
}

cleanup(){
 rm -rf /home/laci/backup/mongo/
}

dump
zipit
cleanup
#echo $1
