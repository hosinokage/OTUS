#!/bin/bash

# Log file check
if [ ! -r "$1" ] ; then 
	echo "Error: log file $1 not found." >&2
	exit 1
fi

# lockfile
lock_file=./lock_file
if [ -f $lock_file ]; then
    echo Wait , job is already started\!
    exit 1
else
    echo "PID: $$" > $lock_file
    trap 'rm -f "$lock_file"; exit $?' INT TERM EXIT
fi
touch $lock_file



time=$(cat access-4560-644067.log | awk '{print $4}' | head -n 1 &&  date | awk '{print $2,$3,$4,$6}')
IP=$(cat access-4560-644067.log | awk '{print $1}' | sort | uniq -c | sort -rn | head -n 10)  
URL=$(cat access-4560-644067.log | awk '{print $7}' | sort | uniq -c | sort -rn | head -n 10)
ERR=$(cat access-4560-644067.log | awk '{print $9}' | grep ^4 | sort | uniq -d -c | sort -rn) 
ERR1=$(cat access-4560-644067.log | egrep -wi 'Error') 
CODE=$(cat access-4560-644067.log | awk '{print $9}'| grep -v "-" | sort | uniq -c | sort -rn | head -n 10)

echo -e "Данные за период:$time\n"IP addresses"\n$IP\n\n"URLs"\n$URL\n\n"Errors"\n$ERR\n\n$ERR1\n\n"HTTP Responses"\n$CODE\n" | mail -s "Log server Info" root@localhost
 
# release lock
rm -f $lock_file
trap - INT TERM EXIT
