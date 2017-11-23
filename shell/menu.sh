#!/bin/bash

OPTION=$(whiptail --title "Radio list example" --menu \
"Choose user's permissions" 15 60 5 \
"Choose user's permissions" 20 78 4 \
"NET_OUTBOUND" "Allow connections to other hosts" \
"NET_INBOUND" "Allow connections from other hosts" \
"LOCAL_MOUNT" "Allow mounting of local devices"  \
"REMOTE_MOUNT" "Allow mounting of remote devices" 3>&1 1>&2 2>&3)

exitstatus=$?
echo ${exitstatus}
if [ $exitstatus = 0 ]; then
    echo "The chosen distro is:" $DISTROS
else
    echo "You chose Cancel."
fi

