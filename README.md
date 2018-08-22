# prepare-basejail
scripts for automatic jail creation, using the advantages of zfs
on FreeBSD RELEASE and XigmaNAS installations.
Thin includes:
- the jails' interface setup
- forward services into the jails:
  - with firewalls: ipfw-nat or pf
  - or with pound
 - preparation of the base jail
 - clone templates for DNS and DHCP services in jail
 - installing webmin for managing theese services
 - zfs special for databases usage in jails (Mysql and Postgresql only)

At the moment this I try to prepare a breadboard modell, which simply work and do the job in uniq settings on XigmaNAS.

Than I try to modify it, to do the same job on a FreeBSD 11.2-RELEASE installation.

I would like to use three ways for the service forwarding: ipfw-nat, pf, pound.

The jails should rely on the advantages of the zfs filesystem.
The zfs send/receive is an excellent way of cloneing template jails.

How to start:
All the neccessary files are in the prepare-basejail.tgz file, but you can see it one-by-one depending on your interest.
