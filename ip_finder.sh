#!/bin/bash
i1=192; i2=168; i3=1; i4=0 #Initial values of each octet
max=255 #Max values of each octet
eval printf -v ip "%s\ " 192.168.1.{$i4..$max} #that example is for the /24 subnet mask.

for i in $ip; do
  ping $i -c 3 2>/dev/null 1>/dev/null
    if [ $? -eq 0 ]
    then 
      echo $i "Host found"
      IP="$i"
      export IP #to set the environment variable
      echo $IP
    fi
done
#Note that use with "source ip_calculator.sh" command to set the environment variable
