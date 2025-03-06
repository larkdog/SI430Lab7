#!/bin/bash
#ipt_rules_wrong.sh
sudo iptables -P OUTPUT ACCEPT 
sudo iptables -P INPUT DROP
