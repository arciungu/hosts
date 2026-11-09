#!/bin/bash

cat /etc/hosts | grep -v "^#" | grep -v "^$" | while read -r ip nume restul
do
	if ! nslookup "$nume" | grep -qw "$ip"
then
	 echo "Bogus IP for $nume in /etc/hosts!"
fi
done	
