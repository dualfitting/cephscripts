#!/bin/bash

rados -p data bench 3600 write >> rados-cephclient1.log&
ssh ceph08 rados -p data bench 3600 write >> rados-ceph08.log&
ssh cephclient2 rados -p data bench 3600 write >> rados-cephclient2.log&


for node in ceph01 ceph02 ceph03 ceph04 #ceph05 ceph06 ceph07
do
    scp dstat.sh $node:/root/dstat.sh
    ssh $node chmod +x /root/dstat.sh
    ssh $node /root/dstat.sh&
done


for i in 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15
do
    ceph osd tell $i bench
done
