#!/bin/bash

date_stamp=$(date +'%Y-%m-%d')

call_backup (){
  sh ./mongodb_backup.sh $date_stamp
}

remove_old_ones(){
 find /var/log -name "mongo-*-*-*.tar.gz" -type f -mtime +30 -exec rm -f {} \;
}

call_backup
remove_old_ones