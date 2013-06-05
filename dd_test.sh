#!/bin/bash
echo "dd write"

for node in ceph01 ceph02 ceph03 ceph04 ceph05 ceph06 ceph07
do		
	echo "ssh in $node"
	#for device in sdb sdd sde
	#do
        #    echo $device
            for ((i=0;5-$i;i++)) 
            do 
		ssh $node dd if=/dev/zero of=/root/test bs=1000MB count=1 conv=fdatasync
                ssh $node rm /root/test
            done
	#done
done
