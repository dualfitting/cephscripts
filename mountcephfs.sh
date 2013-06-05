#!/bin/bash

#mkdir -p /mnt/cephfs
#mount -t ceph ceph05:6789,ceph06:6789,ceph07:6789:/ /mnt/cephfs -vv -o name=admin,secret=AQBTKktRSEiFJhAAq0tXOsycuVoQIOavAT/VTw==
mount -t ceph ceph05:6789,ceph06:6789,ceph07:6789:/ /mnt/cephfs -vv -o name=admin,secret=AQAeu4NRWK5VDRAAHvtik63E1v41P/r7qC9YsA==
#ceph-fuse -m ceph05:6789,ceph06:6789,ceph07:6789 /mnt/cephfs  
