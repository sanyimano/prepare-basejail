# prepare-basejail
scripts for automatic jail creation, using the advantages of zfs
on FreeBSD RELEASE and XigmaNAS installations.
Thin includes:
- the jails' interface setup
- forward services into the jails:
  - with firewalls: ipfw-nat or pf
  - or with pound
 - preparation of the base jail
 - clone templates for DNS and DHCO services in jail
 - installing webmin for managing theese services
 - zfs special for databases usage in jails (Mysql and Postgresql only)
