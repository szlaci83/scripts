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

update
housekeeping
#if [ "$(who)" == "" ];
#  then
#    echo "Rebooting system."
#    #sudo reboot now;
#fi
