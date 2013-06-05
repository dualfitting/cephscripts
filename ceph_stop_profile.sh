#!/bin/bash

killall rados
ssh ceph08 killall rados
ssh cephclient2 killall rados


for node in ceph01 ceph02 ceph03 ceph04 #ceph05 ceph06 ceph07
do
    #ssh $node killall iostat
    ssh $node killall python
done

rm -rf /root/dstat
mkdir -p /root/dstat

scp ceph01:/tmp/dstat.csv /root/dstat/dstat01.csv
scp ceph02:/tmp/dstat.csv /root/dstat/dstat02.csv
scp ceph03:/tmp/dstat.csv /root/dstat/dstat03.csv
scp ceph04:/tmp/dstat.csv /root/dstat/dstat04.csv

echo "sec,ops,started,finished,avgMB/s,curMB/s,last-lat,avg-lat" >> rados-ceph08.csv
echo "sec,ops,started,finished,avgMB/s,curMB/s,last-lat,avg-lat" >> rados-cephclient1.csv
echo "sec,ops,started,finished,avgMB/s,curMB/s,last-lat,avg-lat" >> rados-cephclient2.csv
grep "16" /root/scripts/rados-ceph08.log | gawk '{printf "%s,%s,%s,%s,%s,%s,%s,%s\n",$1,$2,$3,$4,$5,$6,$7,$8}' >> rados-ceph08.csv
grep "16" /root/scripts/rados-cephclient1.log | gawk '{printf "%s,%s,%s,%s,%s,%s,%s,%s\n",$1,$2,$3,$4,$5,$6,$7,$8}' >> rados-cephclient1.csv
grep "16" /root/scripts/rados-cephclient2.log | gawk '{printf "%s,%s,%s,%s,%s,%s,%s,%s\n",$1,$2,$3,$4,$5,$6,$7,$8}' >> rados-cephclient2.csv



