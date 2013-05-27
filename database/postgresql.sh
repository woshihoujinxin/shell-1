#!/bin/bash
TITLE="PostgreSQL"

PKG=$(whiptail --title "$TITLE" --menu "Options:" 20 60 5 \
"1" "PostgreSQL server programs" \
"2" "PostgreSQL client programs" \
"3" "PostgreSQL server and client programs" \
"4" "Pgpool is a connection pooling/replication server" \
3>&1 1>&2 2>&3)

case "$PKG" in
	1)
		yum install postgresql-server
		;;
	2)
		yum install postgresql
		;;
	3)
		yum install postgresql-server postgresql
		;;
	4)
		yum install pgpool-II
		;;
	*)
		
		RETVAL=1
esac

#exit $RETVAL