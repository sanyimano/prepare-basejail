# ez a file a prepare-jailnet.sh
# it will prepare cloned interfaces and firewall and natd settings
#/bin/sh
cp myfirewall.rules /usr/local/etc
cp natd.rules /usr/local/etc
sysrc cloned_interfaces=lo1
sysrc ipv4_addrs_lo1=10.1.1.1-9/29
sysrc firewall_enable=YES
sysrc firewall_script=/usr/local/etc/myfirewall.rules
sysrc gateway_enable=YES
sysrc natd_enable=YES
sysrc natd_interface=em0
sysrc natd_flags=/usr/local/etc/natd.rules
service netif restart
