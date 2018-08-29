#!/bin/sh
passwd
mkdir /usr/home
ln -s /usr/home /home
cd /etc/mail
make
newaliases
echo 'ENV=$HOME/.shrc ; export ENV' >> /root/.profile
sysrc sendmail_enable=NO
sysrc syslogd_flags=-sschroot /zdata/.my_jails_cache /bin/csh
sysrc rpcbind_enable=NO
sysrc sshd_enable=YES
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "AllowTcpForwarding yes" >> /etc/ssh/sshd_config
service sshd restart
ssh-keygen -A
ssh-keygen
exit
