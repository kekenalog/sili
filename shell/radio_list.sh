#!/bin/bash

OPTION=$(whiptail --title "Radio list example" --radiolist \
"Choose user's permissions" 15 60 5 \
"Choose user's permissions" 20 78 4 \
"NET_OUTBOUND" "Allow connections to other hosts" ON \
"NET_INBOUND" "Allow connections from other hosts" OFF \
"LOCAL_MOUNT" "Allow mounting of local devices" OFF \
"REMOTE_MOUNT" "Allow mounting of remote devices" OFF 3>&1 1>&2 2>&3)

exitstatus=$?
echo ${exitstatus}
if [ $exitstatus = 0 ]; then
    echo "The chosen distro is:" $DISTROS
else
    echo "You chose Cancel."
fi

