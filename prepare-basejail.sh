#!/bin/sh
sysrc jail_enable=YES
sysrc zfs_enable=YES
pkg install pkg wget
zfs create adat/.my_jails_cache
JAILROOT="/mnt/adat"
cd $JAILROOT/.my_jails_cache/
wget http://ftp1.us.freebsd.org/pub/FreeBSD/releases/amd64/11.1-RELEASE/base.txz
wget http://ftp1.us.freebsd.org/pub/FreeBSD/releases/amd64/11.1-RELEASE/lib32.txz
wget http://ftp1.us.freebsd.org/pub/FreeBSD/releases/amd64/11.1-RELEASE/src.txz
wget http://ftp1.us.freebsd.org/pub/FreeBSD/releases/amd64/11.1-RELEASE/ports.txz
tar -jxf base.txz
tar -jxf lib32.txz
echo "A szükséges fájlok letöltve és kicsomagolva"
echo "resolve localtime és hosts beállítás"
cp /etc/resolv.conf $JAILROOT/.my_jails_cache/etc/
cp /etc/localtime $JAILROOT/.my_jails_cache/etc/
cp /etc/hosts $JAILROOT/.my_jails_cache/etc/
cp /root/prepare-inside.sh $JAILROOT/.my_jails_cache/root
cp /root/jail.conf /etc/
service jail start

