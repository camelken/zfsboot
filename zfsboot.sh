
export ZFSBOOT_POOL_CREATE_OPTIONS="-O atime=off"
export ZFSBOOT_DISKS=ada0
export ZFSBOOT_DATASETS="
    /ROOT                mountpoint=none,compression=off
    /ROOT/default        mountpoint=/,canmount=noauto,compression=off

    /tmp        mountpoint=/tmp,compression=off,exec=on,setuid=off
    /usr        mountpoint=/usr,canmount=off,compression=off
    /usr/src    compression=gzip-9,exec=off,setuid=off
    /usr/obj    compression=off

    /usr/ports  mountpoint=/usr/ports,compression=gzip-9,setuid=off
    /usr/ports/distfiles  compression=off,exec=off,setuid=off
    /usr/ports/packages   compression=off,exec=off,setuid=off

    /usr/local  mountpoint=/usr/local,compression=off

    /home       mountpoint=/home,compression=off

    /var	mountpoint=/var,canmount=off,compression=off
    /var/audit  compression=gzip-9,exec=off,setuid=off
    /var/crash  compression=gzip-9,exec=off,setuid=off
    /var/log    compression=gzip-9,exec=off,setuid=off
    /var/mail   compression=gzip-9,atime=on
    /var/tmp    compression=gzip-9,exec=on,setuid=off
" 

export nonInteractive="YES"
DISTRIBUTIONS="base.txz lib32.txz kernel.txz"

#!/bin/sh

echo 'ifconfig_em0="DHCP"' > /etc/rc.conf

echo "" >> /etc/rc.conf

echo 'keymap="us"' >> /etc/rc.conf

echo "" >> /etc/rc.conf

echo 'saver="daemon"' >> /etc/rc.conf

echo "" >> /etc/rc.conf

echo 'sshd_enable="YES"' >> /etc/rc.conf

echo "" >> /etc/rc.conf

echo 'clear_tmp_enable="YES"' >> /etc/rc.conf

echo "" >> /etc/rc.conf

echo "# Set dumpdev to "AUTO" to enable crash dumps, "NO" to disable" >> /etc/rc.conf
echo 'dumpdev="AUTO"' >> /etc/rc.conf

echo "" >> /etc/rc.conf
echo "### ntpdate" >> /etc/rc.conf
echo 'ntpdate_enable="YES"' >> /etc/rc.conf
echo 'ntpdate_program="/usr/sbin/ntpdate"' >> /etc/rc.conf
echo 'ntpdate_flags="-b"' >> /etc/rc.conf
echo 'ntpdate_hosts="ntp1.jst.mfeed.ad.jp"' >> /etc/rc.conf

echo "" >> /etc/rc.conf

echo "### syslogd" >> /etc/rc.conf
echo 'syslogd_enable="YES"' >> /etc/rc.conf

echo "" >> /etc/rc.conf
echo "### Settings for /etc/rc.sendmail and /etc/rc.d/sendmail:" >> /etc/rc.conf
echo 'sendmail_enable="NO"' >> /etc/rc.conf
echo 'sendmail_submit_enable="NO"' >> /etc/rc.conf
echo 'sendmail_outbound_enable="NO"' >> /etc/rc.conf
echo 'sendmail_msp_queue_enable="NO"' >> /etc/rc.conf

echo "" >> /etc/rc.conf

echo "### zfs" >> /etc/rc.conf
echo 'zfs_enable="YES"' >> /etc/rc.conf
