#!/bin/bash

service avahi-daemon stop

# Enable IPv6 module
modprobe ipv6

# Manually addr setting
ip addr add 2000::1/64 dev eth0
sleep 2
ip link set up dev eth0

# Enable IPv6 forwarding
/sbin/sysctl -w net.ipv6.conf.all.forwarding=1

# start radvd daemon
service radvd start

#check ip6 neighbors and find our board
ip -6 n 


