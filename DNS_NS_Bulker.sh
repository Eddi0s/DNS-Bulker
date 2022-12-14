#! /bin/bash
for websiteurl in $(cat ./dns.list) ; do
        #echo loop start for $websiteurl
        dig ns $websiteurl | grep -A 3 --color ';; ANSWER SECTION:'
        #echo loop end for $websiteurl
	sleep 1
done
