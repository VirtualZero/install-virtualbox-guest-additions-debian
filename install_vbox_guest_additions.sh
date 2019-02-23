#!/bin/bash

update() {
    apt-get update && apt-get upgrade -y
}

install_vbox_ga() {
    apt-get install build-essential module-assistant -y
    m-a prepare

    read -p "Insert the VirtualBox Guest Additions image now. Press any key to continue: "

    mount /dev/cdrom /mnt
    sh /mnt/VBoxLinuxAdditions.run
}

exit_script() {
    exit 0
}

update
install_vbox_ga
exit_script
