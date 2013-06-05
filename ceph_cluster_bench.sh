#!/bin/bash

rados -p data bench 3600 write >> rados-cephclient1.log&
ssh ceph08 rados -p data bench 3600 write >> rados-ceph08.log&
ssh cephclient2 rados -p data bench 3600 write >> rados-cephclient2.log&






