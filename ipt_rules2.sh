#!/bin/bash
#ipt_rules2.sh

sudo iptables -F
sudo iptables -P INPUT DROP
sudo iptables -A INPUT -i lo -j ACCEPT
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A INPUT -s 192.168.72.6 -p tcp --dport 22 -j DROP
sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -A INPUT -p tcp -j DROP
sudo iptables -A OUTPUT -d 192.168.72.5 -p tcp --dport 22 -j DROP
sudo iptables -A OUTPUT -p tcp --dport 23 -j DROP
