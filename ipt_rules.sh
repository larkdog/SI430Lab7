#!/bin/bash
#ipt_rules.sh
sudo iptables -A INPUT -p tcp --dport 1337 -j ACCEPT
sudo iptables -A INPUT -p udp --dport 53 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 3389 -j DROP
