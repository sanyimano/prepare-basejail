#!/bin/sh
sysrc jail_enable=YES
sysrc zfs_enable=YES
pkg install pkg wget
pkg install unzip
JAILPOOL="zdata"
JAILROOT="/mnt/zdata"
FREEBSDVERSION='11.2-RELEASE'
zfs create $JAILPOOL/.my_jails_cache
cd $JAILROOT/.my_jails_cache/
wget http://ftp1.us.freebsd.org/pub/FreeBSD/releases/amd64/$FREEBSDVERSION/base.txz
wget http://ftp1.us.freebsd.org/pub/FreeBSD/releases/amd64/$FREEBSDVERSION/lib32.txz
wget http://ftp1.us.freebsd.org/pub/FreeBSD/releases/amd64/$FREEBSDVERSION/src.txz
wget http://ftp1.us.freebsd.org/pub/FreeBSD/releases/amd64/$FREEBSDVERSION/ports.txz
tar -jxf base.txz
tar -jxf lib32.txz
echo "A szükséges fájlok letöltve és kicsomagolva"
echo "resolve localtime és hosts beállítás"
cp /etc/resolv.conf $JAILROOT/.my_jails_cache/etc/
cp /etc/localtime $JAILROOT/.my_jails_cache/etc/
cp /etc/hosts $JAILROOT/.my_jails_cache/etc/
cp prepare-inside.sh $JAILROOT/.my_jails_cache/root
cp jail.conf /etc/
service jail start

