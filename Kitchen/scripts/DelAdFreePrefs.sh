#!/system/bin/sh
#
# Script for AOSPDesire
# Delete AdFreePrefs.xml is needed because i repush after update the original hosts
# AdFree keep in preference the last update but its false after update

echo "+++ Loading Script for delete AdFreePrefs Start";

echo "+++ Mounting /data read-write";
busybox mount -o rw,nosuid,nodev,relatime -t yaffs2 /dev/block/mtdblock5 /data;
sleep 2

busybox echo "+++ delete AdFreePrefs.xml if exist";
busybox rm -f /data/data/com.bigtincan.android.adfree/shared_prefs/AdFreePrefs.xml;

echo "+++ Sync";
busybox sync;
sleep 2;

echo "+++ Loading Script for delete AdFreePrefs Stop";
