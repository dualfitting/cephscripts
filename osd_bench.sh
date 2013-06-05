#!/bin/bash


for i in 0 1 2 3 4
do
    ceph osd tell $i bench
done;
