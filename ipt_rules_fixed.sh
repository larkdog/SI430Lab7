#!/bin/bash
#ipt_rules_fixed.sh
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
