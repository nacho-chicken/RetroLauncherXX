#!/bin/sh

. /opt/muos/script/var/func.sh

. /opt/muos/script/var/device/storage.sh

pkill -STOP muxtask
/opt/muos/extra/muxlog &
sleep 1

TMP_FILE=/tmp/muxlog_global
rm -rf "$TMP_FILE"

RL_DIR=/home/muos/retrolauncherxx

if [ -e "$RL_DIR/installed" ]; then
	echo "RetroLauncher XX is already installed!" >/tmp/muxlog_info
	ERRORNO=1
else
	echo "Backing up startup script" > /tmp/muxlog_info
	cp /opt/muos/script/system/startup.sh /opt/muos/script/system/startup.sh.bak || ERRORNO=2

	if [ -n "$ERRORNO" ]; then
		echo "ERROR: Failed to create backup" >/tmp/muxlog_info
	else
		echo "Modifying startup script to install on next boot" >/tmp/muxlog_info
		cp "$RL_DIR/startup.sh" /opt/muos/script/system/startup.sh
	fi
fi

if [ -n "$ERRORNO" ]; then
	echo "Aborting..." >/tmp/muxlog_info
	sync
	sleep 3
else
	# Sync filesystem just-in-case :)
	echo "Sync Filesystem" >/tmp/muxlog_info
	sync

	echo "All Done!" >/tmp/muxlog_info
	sleep 3
fi

killall -q muxlog
rm -rf "$MUX_TEMP" /tmp/muxlog_*

pkill -CONT muxtask
killall -q "Install RetroLauncher XX.sh"
