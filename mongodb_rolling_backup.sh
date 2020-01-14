#!/bin/bash

date_stamp=$(date +'%Y-%m-%d')

call_backup (){
  sh /home/laci/git/scripts/mongodb_backup.sh $date_stamp
}

remove_old_ones(){
 find /home/laci/backup/mongo -name "mongo-*-*-*.tar.gz" -type f -mtime +30 -exec rm -f {} \;
}

send_mail(){
 echo "Subject: mongoDB rolling backup Done." | sendmail -v $MAIL
}

call_backup
remove_old_ones
send_mail
