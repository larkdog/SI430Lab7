#!/bin/bash
#ipt_rules_wrong2.sh
sudo iptables -A INPUT -p tcp --sport 80 -j ACCEPT
