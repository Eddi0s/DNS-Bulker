#! /bin/bash
for websiteurl in $(cat ./dns.list) ; do
        #echo loop start for $websiteurl
        dig cname _43b3adb695c677164abe8b33aeab231e.$websiteurl | grep -A 1 --color ';; ANSWER SECTION:'
        #echo loop end for $websiteurl
	sleep 1
done
