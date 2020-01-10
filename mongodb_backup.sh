#!/bin/bash

dump() {
 mongodump --out /home/laci/backup/mongo;
}

zipit(){
 tar -zcvf /home/laci/backup/mongodb/mongo-$1.tar.gz /home/laci/backup/mongo/
}

cleanup(){
 rm -rf /home/laci/backup/mongo/
}

dump
zipit
cleanup