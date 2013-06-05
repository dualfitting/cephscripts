#!/bin/bash
#mkdir -p /root/iostat

#scp ceph01:/tmp/iostat.log  /root/iostat/iostat01.log
#scp ceph02:/tmp/iostat.log  /root/iostat/iostat02.log
#scp ceph03:/tmp/iostat.log  /root/iostat/iostat03.log
#scp ceph04:/tmp/iostat.log  /root/iostat/iostat04.log
#scp ceph05:/tmp/iostat.log  /root/iostat/iostat05.log
#scp ceph06:/tmp/iostat.log  /root/iostat/iostat06.log
#scp ceph07:/tmp/iostat.log  /root/iostat/iostat07.log

mkdir -p /root/dstat

scp ceph01:/tmp/dstat.csv /root/dstat/dstat01.csv
scp ceph02:/tmp/dstat.csv /root/dstat/dstat02.csv
scp ceph03:/tmp/dstat.csv /root/dstat/dstat03.csv
scp ceph04:/tmp/dstat.csv /root/dstat/dstat04.csv
#scp ceph05:/tmp/dstat.csv /root/dstat/dstat05.csv
#scp ceph06:/tmp/dstat.csv /root/dstat/dstat06.csv
#scp ceph07:/tmp/dstat.csv /root/dstat/dstat07.csv


