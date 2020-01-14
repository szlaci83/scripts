#!/bin/bash

update() {
    sudo apt-get update;
    sudo apt-get upgrade -y;
    sudo apt-get dist-upgrade -y;
}
housekeeping() {
    sudo apt-get autoremove -y;
    sudo apt-get autoclean -y;
    sudo updatedb;
}

send_mail(){
     echo "Subject: System update done" | sendmail -v $EMAIL < /var/log/laci/system_update.log
}
update
housekeeping
send_mail
#if [ "$(who)" == "" ];
#  then
#    echo "Rebooting system."
#    #sudo reboot now;
#fi
