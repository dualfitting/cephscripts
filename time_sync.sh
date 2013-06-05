#!/bin/bash

for node in ceph01 ceph02 ceph03 ceph04 ceph05 ceph06 ceph08 ceph09 ceph10 cephclient2 
do
    ssh $node ntpdate cephclient1
    ssh $node hwclock -w
done;


