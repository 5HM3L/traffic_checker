#!/bin/sh
echo "Making csv.dump ...";
tshark -r $1 -Tfields -E separator=, -E header=y -E quote=d -e frame.number -e frame.time -e frame.time_delta -e frame.len -e frame.protocols -e eth.dst -e eth.src -e eth.dst_resolved -e eth.src_resolved -e eth.type -e ip.version -e ip.len -e ip.id -e ip.flags -e ip.frag_offset -e ip.ttl -e ip.proto -e ip.src -e ip.dst -e tcp.srcport -e tcp.dstport -e tcp.stream -e tcp.len -e tcp.seq -e tcp.hdr_len -e tcp.flags.res -e tcp.flags.ns -e tcp.flags.cwr -e tcp.flags.ecn -e tcp.flags.urg -e tcp.flags.ack -e tcp.flags.push -e tcp.flags.reset -e tcp.flags.syn  -e _ws.expert.message -e _ws.expert.severity -e _ws.expert.group -e tcp.flags.fin > Yourdump.csv;
echo "Check your .csv dump in Yourdump.csv";
